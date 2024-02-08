# Solidity API

## NonblockingLzApp

### constructor

```solidity
constructor(address _endpoint) internal
```

### failedMessages

```solidity
mapping(uint16 => mapping(bytes => mapping(uint64 => bytes32))) failedMessages
```

### MessageFailed

```solidity
event MessageFailed(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload, bytes _reason)
```

### RetryMessageSuccess

```solidity
event RetryMessageSuccess(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes32 _payloadHash)
```

### _blockingLzReceive

```solidity
function _blockingLzReceive(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) internal virtual
```

### _storeFailedMessage

```solidity
function _storeFailedMessage(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload, bytes _reason) internal virtual
```

### nonblockingLzReceive

```solidity
function nonblockingLzReceive(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) public virtual
```

### _nonblockingLzReceive

```solidity
function _nonblockingLzReceive(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) internal virtual
```

### retryMessage

```solidity
function retryMessage(uint16 _srcChainId, bytes _srcAddress, uint64 _nonce, bytes _payload) public payable virtual
```

