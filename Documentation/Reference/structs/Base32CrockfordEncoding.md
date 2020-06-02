**STRUCT**

# `Base32CrockfordEncoding`

```swift
public struct Base32CrockfordEncoding: Base32CrockfordEncodingProtocol, Base32CrockfordComparer
```

## Methods
### `encode(data:)`

```swift
public func encode(data: Data) -> String
```

### `decode(base32Encoded:)`

```swift
public func decode(base32Encoded string: String) throws -> Data
```

### `data(_:hasEncodedPrefix:)`

```swift
public func data(_ data: Data, hasEncodedPrefix prefix: String) -> Bool
```
