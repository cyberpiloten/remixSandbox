//SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

contract SendWithdrawMoney {
    uint public balanceReceived;
    function balanceDeposit() public payable {
        balanceReceived += msg.value;
    }
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    function withdrawAllTo() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }
    function withdrawTo(address payable to) public {
        to.transfer(getContractBalance());
    }
}

