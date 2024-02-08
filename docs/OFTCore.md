# Solidity API

## OFTCore

### NO_EXTRA_GAS

```solidity
uint256 NO_EXTRA_GAS
```

### PT_SEND

```solidity
uint16 PT_SEND
```

### useCustomAdapterParams

```solidity
bool useCustomAdapterParams
```

### constructor

```solidity
constructor(address _lzEndpoint) internal
```

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) public view virtual returns (bool)
```

### estimateSendFee

```solidity
function estimateSendFee(uint16 _dstChainId, bytes _toAddress, uint256 _amount, bool _useZro, bytes _adapterParams) public view virtual returns (uint256 nativeFee, uint256 zroFee)
```

_estimate send token `_tokenId` to (`_dstChainId`, `_toAddress`)
_dstChainId - L0 defined chain id to send tokens too
_toAddress - dynamic bytes array which contains the address to whom you are sending tokens to on the dstChain
_amount - amount of the tokens to transfer
_useZro - indicates to use zro to pay L0 fees
_adapterParam - flexible bytes array to indicate messaging adapter services in L0_

### estimateSendFee2

```solidity
function estimateSendFee2(uint16 _dstChainId, bytes payload, bool _useZro, bytes _adapterParams) public view virtual returns (uint256 nativeFee, uint256 zroFee)
```

### sendFrom

```solidity
function sendFrom(address _from, uint16 _dstChainId, bytes _toAddress, uint256 _amount, address payable _refundAddress, address _zroPaymentAddress, bytes _adapterParams) public payable virtual
```

_send `_amount` amount of token to (`_dstChainId`, `_toAddress`) from `_from`
`_from` the owner of token
`_dstChainId` the destination chain identifier
`_toAddress` can be any size depending on the `dstChainId`.
`_amount` the quantity of tokens in wei
`_refundAddress` the address LayerZero refunds if too much message fee is sent
`_zroPaymentAddress` set to address(0x0) if not paying in ZRO (LayerZero Token)
`_adapterParams` is a flexible bytes array to indicate messaging adapter services_

### setUseCustomAdapterParams

```solidity
function setUseCustomAdapterParams(bool _useCustomAdapterParams) public virtual
```

### _nonblockingLzReceive

```solidity
function _nonblockingLzReceive(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) internal virtual
```

### _send

```solidity
function _send(address _from, uint16 _dstChainId, bytes _toAddress, uint256 _amount, address payable _refundAddress, address _zroPaymentAddress, bytes _adapterParams) internal virtual
```

### _sendAck

```solidity
function _sendAck(uint16 _srcChainId, bytes, uint64, bytes _payload) internal virtual
```

### _checkAdapterParams

```solidity
function _checkAdapterParams(uint16 _dstChainId, uint16 _pkType, bytes _adapterParams, uint256 _extraGas) internal virtual
```

### _debitFrom

```solidity
function _debitFrom(address _from, uint16 _dstChainId, bytes _toAddress, uint256 _amount) internal virtual returns (uint256)
```

### _creditTo

```solidity
function _creditTo(uint16 _srcChainId, address _toAddress, uint256 _amount) internal virtual returns (uint256)
```

