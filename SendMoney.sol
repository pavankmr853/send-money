pragma solidity ^0.6.0;

contract SendMoney{
    uint public balanceRecived;
    
    function reciveMoney() public payable {
        balanceRecived += msg.value;
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public {
        address payable to = msg.sender;
        to.transfer(this.getBalance());
        
    }
    
    function withdrawMoney(address payable _to) public{
        _to.transfer(this.getBalance());
    }
}
