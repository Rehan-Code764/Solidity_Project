// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Event_Organize {
    struct Event {address organizer;string name;uint date;uint price;uint TicketCount;uint TicketRemain;}

    mapping(uint => Event) public events;
    mapping(address => mapping(uint => uint)) public tickets;
    uint public nextid;

    function Create_Event(string memory name,uint date,uint price,uint Ticketcount) external {
        require(date > block.timestamp,"You can organize event for future date");
        require(Ticketcount > 0, "Ticket count should be greater than zero");
        events[nextid] = Event( msg.sender, name, date, price,Ticketcount,Ticketcount );
        nextid++;
    }
    function Buy_Ticket(uint id, uint quantity) external payable {
        require(events[id].date != 0, "This event does not exit");
        require(events[id].date > block.timestamp, "Event is already occured");
        Event storage _event = events[id];

        require(msg.value == (_event.price * quantity), "Not Enough Ether");
        require(_event.TicketRemain >= quantity, "Not enough ticket remaining");
        _event.TicketRemain -= quantity;
        tickets[msg.sender][id] += quantity;
    }
    function Transfer_Ticket(uint id, uint quantity, address to) external {
        require(events[id].date != 0, "This event does not exit");
        require(events[id].date > block.timestamp, "Event is already occured");
        require(tickets[msg.sender][id] >= quantity,"Not enough ticket to transfer");
        tickets[to][id] += quantity;
        tickets[msg.sender][id] -= quantity;
    }
}
