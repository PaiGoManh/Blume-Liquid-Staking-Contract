// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BLSToken is ERC20 {
    constructor() ERC20("Blume Liquid Staking", "BLS") {

        uint256 initialSupply = 1000000 * 10 ** decimals(); 
        _mint(msg.sender, initialSupply);
    }
}

contract stBLSToken is ERC20 {

    constructor() ERC20("Staked Blume Liquid Staking", "stBLS") {}

    function mint(address account, uint256 amount) public {

        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {

        _burn(account, amount);
    }
}

contract BlumeLiquidStaking {
    
    BLSToken public blsToken;
    stBLSToken public stBlsToken;

    constructor(BLSToken _blsToken, stBLSToken _stBlsToken) {

        blsToken = _blsToken;
        stBlsToken = _stBlsToken;
    }

    function stake(uint256 amount) public {

        blsToken.transferFrom(msg.sender, address(this), amount);
        stBlsToken.mint(msg.sender, amount);
    }

    function unstake(uint256 amount) public {

        stBlsToken.burn(msg.sender, amount);
        blsToken.transfer(msg.sender, amount);
    }
}
