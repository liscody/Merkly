// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "./OFTCore.sol";
import "./ERC20.sol";
import "./interfaces/IOFT.sol";

// override decimal() function is needed
contract OFT is OFTCore, ERC20, IOFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint
    ) ERC20(_name, _symbol) OFTCore(_lzEndpoint) {}

    function supportsInterface(bytes4 interfaceId) public view virtual override(OFTCore, IERC165) returns (bool) {
        return
            interfaceId == type(IOFT).interfaceId ||
            interfaceId == type(IERC20).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    function token() public view virtual override returns (address) {
        return address(this);
    }

    function circulatingSupply() public view virtual override returns (uint256) {
        return totalSupply();
    }

    function _debitFrom(
        address _from,
        uint16,
        bytes memory,
        uint256 _amount
    ) internal virtual override returns (uint256) {
        address spender = _msgSender();
        if (_from != spender) _spendAllowance(_from, spender, _amount);
        _burn(_from, _amount);
        return _amount;
    }

    function _creditTo(
        uint16,
        address _toAddress,
        uint256 _amount
    ) internal virtual override returns (uint256) {
        _mint(_toAddress, _amount);
        return _amount;
    }
}
