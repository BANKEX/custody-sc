pragma solidity ^0.4.14;

contract ERCToken {
    function transfer(address _to, uint256 _value) public returns (bool success) {}
}

contract ClientWalletContract {
    address owner;
    ERCToken bkxToken;
    
    function ClientWalletContract(address bkxAddress) public {
        owner = msg.sender;
        bkxToken = ERCToken(bkxAddress);
    }
    
    function SendTokens(uint256 amount) public {
        if (msg.sender != owner) return;
        bkxToken.transfer(owner, amount);
    }
}
