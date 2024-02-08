# Solidity API

## LzApp

### DEFAULT_PAYLOAD_SIZE_LIMIT

```solidity
uint256 DEFAULT_PAYLOAD_SIZE_LIMIT
```

### lzEndpoint

```solidity
contract ILayerZeroEndpoint lzEndpoint
```

### trustedRemoteLookup

```solidity
mapping(uint16 => bytes) trustedRemoteLookup
```

### minDstGasLookup

```solidity
mapping(uint16 => mapping(uint16 => uint256)) minDstGasLookup
```

### payloadSizeLimitLookup

```solidity
mapping(uint16 => uint256) payloadSizeLimitLookup
```

### precrime

```solidity
address precrime
```

### SetPrecrime

```solidity
event SetPrecrime(address precrime)
```

### SetTrustedRemote

```solidity
event SetTrustedRemote(uint16 _remoteChainId, bytes _path)
```

### SetTrustedRemoteAddress

```solidity
event SetTrustedRemoteAddress(uint16 _remoteChainId, bytes _remoteAddress)
```

### SetMinDstGas

```solidity
event SetMinDstGas(uint16 _dstChainId, uint16 _type, uint256 _minDstGas)
```

### constructor

```solidity
constructor(address _endpoint) internal
```

### lzReceive

```solidity
function lzReceive(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) public virtual
```

### _blockingLzReceive

```solidity
function _blockingLzReceive(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) internal virtual
```

### _lzSend

```solidity
function _lzSend(uint16 _dstChainId, bytes _payload, address payable _refundAddress, address _zroPaymentAddress, bytes _adapterParams, uint256 _nativeFee) internal virtual
```

### _checkGasLimit

```solidity
function _checkGasLimit(uint16 _dstChainId, uint16 _type, bytes _adapterParams, uint256 _extraGas) internal view virtual
```

### _getGasLimit

```solidity
function _getGasLimit(bytes _adapterParams) internal pure virtual returns (uint256 gasLimit)
```

### _checkPayloadSize

```solidity
function _checkPayloadSize(uint16 _dstChainId, uint256 _payloadSize) internal view virtual
```

### getConfig

```solidity
function getConfig(uint16 _version, uint16 _chainId, address, uint256 _configType) external view returns (bytes)
```

### setConfig

```solidity
function setConfig(uint16 _version, uint16 _chainId, uint256 _configType, bytes _config) external
```

### setSendVersion

```solidity
function setSendVersion(uint16 _version) external
```

### setReceiveVersion

```solidity
function setReceiveVersion(uint16 _version) external
```

### forceResumeReceive

```solidity
function forceResumeReceive(uint16 _srcChainId, bytes _srcAddress) external
```

### setTrustedRemote

```solidity
function setTrustedRemote(uint16 _remoteChainId, bytes _path) external
```

### setTrustedRemoteAddress

```solidity
function setTrustedRemoteAddress(uint16 _remoteChainId, bytes _remoteAddress) external
```

### getTrustedRemoteAddress

```solidity
function getTrustedRemoteAddress(uint16 _remoteChainId) external view returns (bytes)
```

### setPrecrime

```solidity
function setPrecrime(address _precrime) external
```

### setMinDstGas

```solidity
function setMinDstGas(uint16 _dstChainId, uint16 _packetType, uint256 _minGas) external
```

### setPayloadSizeLimit

```solidity
function setPayloadSizeLimit(uint16 _dstChainId, uint256 _size) external
```

### isTrustedRemote

```solidity
function isTrustedRemote(uint16 _srcChainId, bytes _srcAddress) external view returns (bool)
```

