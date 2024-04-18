//SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract SendWithdrawMoney {
    uint public balanceReceived;
    function balanceDeposit() public payable {
        balanceReceived += msg.value;
    }
    //function describing getting the contract balance
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    ////function for withdraw to sender
    function withdrawAllTo() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }
    ////function for withdraw to any account
    function withdrawTo(address payable to) public {
        to.transfer(getContractBalance());
    }
}

