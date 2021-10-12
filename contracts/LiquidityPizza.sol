// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/ILiquidityPizza.sol";

contract LiquidityPizza is ILiquidityPizza {

    IVirtualBitcoin public vbtc;
    IERC20 public lpToken;
    uint256 public pizzaId;

    constructor(IVirtualBitcoin _vbtc, IERC20 _lpToken) {
        vbtc = _vbtc;
        lpToken = _lpToken;
    }

    public createPizza() {
        require(pizzaId == 0);
        pizzaId = vbtc.buyPizza(10);
    }
}
