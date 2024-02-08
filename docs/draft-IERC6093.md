# Solidity API

## IERC20Errors

_Standard ERC20 Errors
Interface of the ERC6093 custom errors for ERC20 tokens
as defined in https://eips.ethereum.org/EIPS/eip-6093_

### ERC20InsufficientBalance

```solidity
error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed)
```

_Indicates an error related to the current `balance` of a `sender`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| sender | address | Address whose tokens are being transferred. |
| balance | uint256 | Current balance for the interacting account. |
| needed | uint256 | Minimum amount required to perform a transfer. |

### ERC20InvalidSender

```solidity
error ERC20InvalidSender(address sender)
```

_Indicates a failure with the token `sender`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| sender | address | Address whose tokens are being transferred. |

### ERC20InvalidReceiver

```solidity
error ERC20InvalidReceiver(address receiver)
```

_Indicates a failure with the token `receiver`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| receiver | address | Address to which tokens are being transferred. |

### ERC20InsufficientAllowance

```solidity
error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed)
```

_Indicates a failure with the `spender`’s `allowance`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| spender | address | Address that may be allowed to operate on tokens without being their owner. |
| allowance | uint256 | Amount of tokens a `spender` is allowed to operate with. |
| needed | uint256 | Minimum amount required to perform a transfer. |

### ERC20InvalidApprover

```solidity
error ERC20InvalidApprover(address approver)
```

_Indicates a failure with the `approver` of a token to be approved. Used in approvals._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| approver | address | Address initiating an approval operation. |

### ERC20InvalidSpender

```solidity
error ERC20InvalidSpender(address spender)
```

_Indicates a failure with the `spender` to be approved. Used in approvals._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| spender | address | Address that may be allowed to operate on tokens without being their owner. |

## IERC721Errors

_Standard ERC721 Errors
Interface of the ERC6093 custom errors for ERC721 tokens
as defined in https://eips.ethereum.org/EIPS/eip-6093_

### ERC721InvalidOwner

```solidity
error ERC721InvalidOwner(address owner)
```

_Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
Used in balance queries._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| owner | address | Address of the current owner of a token. |

### ERC721NonexistentToken

```solidity
error ERC721NonexistentToken(uint256 tokenId)
```

_Indicates a `tokenId` whose `owner` is the zero address._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| tokenId | uint256 | Identifier number of a token. |

### ERC721IncorrectOwner

```solidity
error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner)
```

_Indicates an error related to the ownership over a particular token. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| sender | address | Address whose tokens are being transferred. |
| tokenId | uint256 | Identifier number of a token. |
| owner | address | Address of the current owner of a token. |

### ERC721InvalidSender

```solidity
error ERC721InvalidSender(address sender)
```

_Indicates a failure with the token `sender`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| sender | address | Address whose tokens are being transferred. |

### ERC721InvalidReceiver

```solidity
error ERC721InvalidReceiver(address receiver)
```

_Indicates a failure with the token `receiver`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| receiver | address | Address to which tokens are being transferred. |

### ERC721InsufficientApproval

```solidity
error ERC721InsufficientApproval(address operator, uint256 tokenId)
```

_Indicates a failure with the `operator`’s approval. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| operator | address | Address that may be allowed to operate on tokens without being their owner. |
| tokenId | uint256 | Identifier number of a token. |

### ERC721InvalidApprover

```solidity
error ERC721InvalidApprover(address approver)
```

_Indicates a failure with the `approver` of a token to be approved. Used in approvals._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| approver | address | Address initiating an approval operation. |

### ERC721InvalidOperator

```solidity
error ERC721InvalidOperator(address operator)
```

_Indicates a failure with the `operator` to be approved. Used in approvals._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| operator | address | Address that may be allowed to operate on tokens without being their owner. |

## IERC1155Errors

_Standard ERC1155 Errors
Interface of the ERC6093 custom errors for ERC1155 tokens
as defined in https://eips.ethereum.org/EIPS/eip-6093_

### ERC1155InsufficientBalance

```solidity
error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId)
```

_Indicates an error related to the current `balance` of a `sender`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| sender | address | Address whose tokens are being transferred. |
| balance | uint256 | Current balance for the interacting account. |
| needed | uint256 | Minimum amount required to perform a transfer. |
| tokenId | uint256 | Identifier number of a token. |

### ERC1155InvalidSender

```solidity
error ERC1155InvalidSender(address sender)
```

_Indicates a failure with the token `sender`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| sender | address | Address whose tokens are being transferred. |

### ERC1155InvalidReceiver

```solidity
error ERC1155InvalidReceiver(address receiver)
```

_Indicates a failure with the token `receiver`. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| receiver | address | Address to which tokens are being transferred. |

### ERC1155MissingApprovalForAll

```solidity
error ERC1155MissingApprovalForAll(address operator, address owner)
```

_Indicates a failure with the `operator`’s approval. Used in transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| operator | address | Address that may be allowed to operate on tokens without being their owner. |
| owner | address | Address of the current owner of a token. |

### ERC1155InvalidApprover

```solidity
error ERC1155InvalidApprover(address approver)
```

_Indicates a failure with the `approver` of a token to be approved. Used in approvals._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| approver | address | Address initiating an approval operation. |

### ERC1155InvalidOperator

```solidity
error ERC1155InvalidOperator(address operator)
```

_Indicates a failure with the `operator` to be approved. Used in approvals._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| operator | address | Address that may be allowed to operate on tokens without being their owner. |

### ERC1155InvalidArrayLength

```solidity
error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength)
```

_Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
Used in batch transfers._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| idsLength | uint256 | Length of the array of token identifiers |
| valuesLength | uint256 | Length of the array of token amounts |

