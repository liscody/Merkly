# Solidity API

## ExcessivelySafeCall

### LOW_28_MASK

```solidity
uint256 LOW_28_MASK
```

### excessivelySafeCall

```solidity
function excessivelySafeCall(address _target, uint256 _gas, uint16 _maxCopy, bytes _calldata) internal returns (bool, bytes)
```

Use when you _really_ really _really_ don't trust the called
contract. This prevents the called contract from causing reversion of
the caller in as many ways as we can.

_The main difference between this and a solidity low-level call is
that we limit the number of bytes that the callee can cause to be
copied to caller memory. This prevents stupid things like malicious
contracts returning 10,000,000 bytes causing a local OOG when copying
to memory._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _target | address | The address to call |
| _gas | uint256 | The amount of gas to forward to the remote contract |
| _maxCopy | uint16 | The maximum number of bytes of returndata to copy to memory. |
| _calldata | bytes | The data to send to the remote contract |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | success and returndata, as `.call()`. Returndata is capped to `_maxCopy` bytes. |
| [1] | bytes |  |

### excessivelySafeStaticCall

```solidity
function excessivelySafeStaticCall(address _target, uint256 _gas, uint16 _maxCopy, bytes _calldata) internal view returns (bool, bytes)
```

Use when you _really_ really _really_ don't trust the called
contract. This prevents the called contract from causing reversion of
the caller in as many ways as we can.

_The main difference between this and a solidity low-level call is
that we limit the number of bytes that the callee can cause to be
copied to caller memory. This prevents stupid things like malicious
contracts returning 10,000,000 bytes causing a local OOG when copying
to memory._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _target | address | The address to call |
| _gas | uint256 | The amount of gas to forward to the remote contract |
| _maxCopy | uint16 | The maximum number of bytes of returndata to copy to memory. |
| _calldata | bytes | The data to send to the remote contract |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | success and returndata, as `.call()`. Returndata is capped to `_maxCopy` bytes. |
| [1] | bytes |  |

### swapSelector

```solidity
function swapSelector(bytes4 _newSelector, bytes _buf) internal pure
```

Swaps function selectors in encoded contract calls

_Allows reuse of encoded calldata for functions with identical
argument types but different names. It simply swaps out the first 4 bytes
for the new selector. This function modifies memory in place, and should
only be used with caution._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _newSelector | bytes4 | The new 4-byte selector |
| _buf | bytes | The encoded contract args |

