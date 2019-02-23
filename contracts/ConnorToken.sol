pragma solidity ^0.5.2;

import "openzeppelin-solidity⁩/contracts⁩/token⁩/ERC20⁩/ERC20.sol⁩";
import "openzeppelin-solidity⁩/contracts⁩/token⁩/ERC20⁩/ERC20Detailed.sol";
import "⁨openzeppelin-solidity⁩/contracts⁩/token⁩/ERC20⁩/ERC20Burnable.sol";


/**
 * @title ConnorToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract ConnorToken is ERC20, ERC20Detailed, ERC20Burnable {
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(DECIMALS));
    


    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Playcoin with Connor", "Revolution", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}