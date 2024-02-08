# Solidity API

## IOFTCore

_Interface of the IOFT core standard_

### estimateSendFee

```solidity
function estimateSendFee(uint16 _dstChainId, bytes _toAddress, uint256 _amount, bool _useZro, bytes _adapterParams) external view returns (uint256 nativeFee, uint256 zroFee)
```

_estimate send token `_tokenId` to (`_dstChainId`, `_toAddress`)
_dstChainId - L0 defined chain id to send tokens too
_toAddress - dynamic bytes array which contains the address to whom you are sending tokens to on the dstChain
_amount - amount of the tokens to transfer
_useZro - indicates to use zro to pay L0 fees
_adapterParam - flexible bytes array to indicate messaging adapter services in L0_

### sendFrom

```solidity
function sendFrom(address _from, uint16 _dstChainId, bytes _toAddress, uint256 _amount, address payable _refundAddress, address _zroPaymentAddress, bytes _adapterParams) external payable
```

_send `_amount` amount of token to (`_dstChainId`, `_toAddress`) from `_from`
`_from` the owner of token
`_dstChainId` the destination chain identifier
`_toAddress` can be any size depending on the `dstChainId`.
`_amount` the quantity of tokens in wei
`_refundAddress` the address LayerZero refunds if too much message fee is sent
`_zroPaymentAddress` set to address(0x0) if not paying in ZRO (LayerZero Token)
`_adapterParams` is a flexible bytes array to indicate messaging adapter services_

### circulatingSupply

```solidity
function circulatingSupply() external view returns (uint256)
```

_returns the circulating amount of tokens on current chain_

### token

```solidity
function token() external view returns (address)
```

_returns the address of the ERC20 token_

### SendToChain

```solidity
event SendToChain(uint16 _dstChainId, address _from, bytes _toAddress, uint256 _amount)
```

_Emitted when `_amount` tokens are moved from the `_sender` to (`_dstChainId`, `_toAddress`)
`_nonce` is the outbound nonce_

### ReceiveFromChain

```solidity
event ReceiveFromChain(uint16 _srcChainId, address _to, uint256 _amount)
```

_Emitted when `_amount` tokens are received from `_srcChainId` into the `_toAddress` on the local chain.
`_nonce` is the inbound nonce._

### SetUseCustomAdapterParams

```solidity
event SetUseCustomAdapterParams(bool _useCustomAdapterParams)
```

