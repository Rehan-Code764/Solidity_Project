// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PayRoll {

    address public owner;
    uint public payinterval =0 days;

    address[] public all;

    struct Employee {
        string name;
        uint salary;       // Salary in Wei
        uint lastpaid;     // Last payment timestamp
        bool exist;
    }

    mapping(address => Employee) public employee;

    modifier OnlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Add a new employee
    function AddEmp(string memory _name,address _emp,uint _salary) public OnlyOwner {

        require(_emp != address(0), "Invalid employee address");
        require(!employee[_emp].exist, "Already exists");
        require(_salary > 0, "Salary must be greater than zero");

        employee[_emp] = Employee( _name, _salary,block.timestamp,true);

        all.push(_emp);
    }

    // Get all employee addresses
    function GetAllEmployees() public view returns (address[] memory){
        return all;
    }

    // Update employee salary
    function Update_Salary(address _emp,uint _NewSalary) public OnlyOwner {

        require(employee[_emp].exist, "Employee not found");
        require(_NewSalary > 0, "Invalid salary");

        employee[_emp].salary = _NewSalary;
    }

    // Remove employee from mapping and array
    function Remove_Employee(address _emp) public OnlyOwner {

        require(employee[_emp].exist, "Employee not found");

        delete employee[_emp];

        for (uint i = 0; i < all.length; i++) {
            if (all[i] == _emp) {
                all[i] = all[all.length - 1];
                all.pop();
                break;
            }
        }
    }

    // Pay all eligible employees in one transaction
    function PayEmployees() public OnlyOwner {

        for (uint i = 0; i < all.length; i++) {

            address empaddress = all[i];
            Employee storage emp = employee[empaddress];

            if (emp.exist && block.timestamp >= emp.lastpaid + payinterval) {
                require( address(this).balance >= emp.salary,"Insufficient payroll balance");
                // Update state before external call
                emp.lastpaid = block.timestamp;

                (bool success, ) = payable(empaddress).call{ value: emp.salary}("");

                require(success, "Salary payment failed");
            }
        }
    }

    // Pay one employee
    function Pay_Single_Employee(address _emp) public OnlyOwner {

        Employee storage emp = employee[_emp];

        require(emp.exist, "Employee not found");
        require(block.timestamp >= emp.lastpaid + payinterval,"Salary not due yet");
        require(address(this).balance >= emp.salary,"Insufficient payroll balance");

        emp.lastpaid = block.timestamp;

        (bool success, ) = payable(_emp).call{value: emp.salary}("");

        require(success, "Salary payment failed");
    }

    // Fund the payroll contract with ETH
    function FundPay() public payable {
        require(msg.value > 0, "Send some ETH");
    }

    // Check contract balance
    function Get_Balance() public view returns (uint) {
        return address(this).balance;
    }

    // Check employee count
    function GetEmployeeCount() public view returns (uint) {
        return all.length;
    }
}