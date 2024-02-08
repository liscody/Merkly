# Solidity API

## OFT

### constructor

```solidity
constructor(string _name, string _symbol, address _lzEndpoint) public
```

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) public view virtual returns (bool)
```

### token

```solidity
function token() public view virtual returns (address)
```

_returns the address of the ERC20 token_

### circulatingSupply

```solidity
function circulatingSupply() public view virtual returns (uint256)
```

_returns the circulating amount of tokens on current chain_

### _debitFrom

```solidity
function _debitFrom(address _from, uint16, bytes, uint256 _amount) internal virtual returns (uint256)
```

### _creditTo

```solidity
function _creditTo(uint16, address _toAddress, uint256 _amount) internal virtual returns (uint256)
```

