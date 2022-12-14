// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract First_Dapp {
    mapping(address => uint) mapi;
    event news(address _x, uint _b);

    function check(address x) public view returns (uint) {
        return (mapi[x]);
    }

    function set_bal(address x) public returns (uint) {
        if (x == 0x0000000000000000000000000000000000000000) {
            x = msg.sender;
        }
        emit news(x, mapi[x]);
        return (mapi[x]);
    }
}
