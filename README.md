# Corona HTML5 Crypto Plugin

__Corona HTML5 Crypto Plugin similar to standard crypto lib. Includes encryption methods.__

<small>Does not support the <strong>md4</strong> digest.</small>

👷 Built with __[Corona HTML5 Node Kit](https://develephant.github.io/corona-html5-node-kit-docs/)__.

## Install

Add __crypto_js.js__ and __crypto.lua__ to the ___root___ of your project.

## Require

```lua
local crypto = require("crypto")
```

## API

### digest

Generates the message digest (the hash) of the input string.

```lua
crypto.digest( algorithm, data [, raw] )
```

__Arguments__

|name|description|type|required|
|--------|-----------|----|--------|
|algorithm|A constant specifying the hashing algorithm (see [Constants](#constants)).|_Constant_|__Y__|
|data|The input string.|_String_|__Y__|
|raw|Set to `true` for binary output, or `false` for hexadecimal string (default).|_Boolean_|__N__|

__Example__

```lua
local crypto = require( "crypto" )
local hash = crypto.digest( crypto.md5, "Corona HTML5 Rocks!" )
print( hash )   --> b34ce2675b10580bf9f0d6018c72579c
```

### hmac

Computes HMAC (Key-Hashing for Message Authentication Code) of the string and returns it.

```lua
crypto.hmac( algorithm, data, key [, raw] )
```

__Arguments__

|name|description|type|required|
|--------|-----------|----|--------|
|algorithm|A constant specifying the hashing algorithm (see [Constants](#constants)).|_Constant_|__Y__|
|data|The input string.|_String_|__Y__|
|key|String to use as the seed for the HMAC generation.|_String_|__Y__|
|raw|Set to `true` for binary output, or `false` for hexadecimal string (default).|_Boolean_|__N__|

__Example__

```lua
local crypto = require( "crypto" )
local hash = crypto.hmac( crypto.md5, "Corona HTML5 Rocks!", "SomeKey" )
print( hash )   --> 1341b82ca266c77f77b27a318508a481
```

## Encryption

### encrypt

Encrypts a string value using a passphrase. Defaults to AES cipher.

```lua
crypto.encrypt( data, passphrase [, cipher] )
```

__Arguments__

|name|description|type|required|
|--------|-----------|----|--------|
|data|The input data to encrypt.|_String_|__Y__|
|passphrase|The passphrase string.|_String_|__Y__|
|cipher|A constant specifying the cipher to use. Defaults to AES. (see [Constants](#constants)).|_Constant_|__N__|

__Example__

```lua
local crypto = require( "crypto" )
local encrypted = crypto.encrypt( "Corona HTML5 Rocks!", "passphrase" )
print( encrypted )   --> U2FsdGVkX19YaYWtxaJQJZ9LYoIFsCJS7pLF5vjHs+Q9v0c8evHoGWJ1dbYsUOKG
```

### decrypt

Decrypts an encrypted value using a passphrase. Defaults to AES cipher.

```lua
crypto.decrypt( data, passphrase [, cipher] )
```

__Arguments__

|name|description|type|required|
|--------|-----------|----|--------|
|data|The input data to decrypt.|_String_|__Y__|
|passphrase|The passphrase string.|_String_|__Y__|
|cipher|A constant specifying the cipher to use. Defaults to AES. (see [Constants](#constants)).|_Constant_|__N__|

__Example__

```lua
local crypto = require( "crypto" )
local decrypted = crypto.decrypt( "U2FsdGVkX19YaYWtxaJQJZ9LYoIFsCJS7pLF5vjHs+Q9v0c8evHoGWJ1dbYsUOKG", "passphrase" )
print( decrypted )   --> Corona HTML5 Rocks!
```

## Constants

### Digests/HMAC

  - `crypto.md5`
  - `crypto.sha1`
  - `crypto.sha224`
  - `crypto.sha256`
  - `crypto.sha384`
  - `crypto.sha512`

### Encryption

  - `crypto.aes` (default)
  - `crypto.des` (triple DES)
  - `crypto.rabbit`

---

&copy;2018 C. Byerley ([develephant](https://develephant.com))