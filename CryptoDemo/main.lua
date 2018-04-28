--#############################################################################
--# Corona HTML5 Crypto Plugin
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local crypto = require("crypto")

--Digest
print( '=> DIGEST')
print( 'md5', crypto.digest(crypto.md5, "Corona HTML5 Rocks!") )
print( 'sha1', crypto.digest(crypto.sha1, "Corona HTML5 Rocks!") )
print( 'sha224', crypto.digest(crypto.sha224, "Corona HTML5 Rocks!") )
print( 'sha256', crypto.digest(crypto.sha256, "Corona HTML5 Rocks!") )
print( 'sha384', crypto.digest(crypto.sha384, "Corona HTML5 Rocks!") )
print( 'sha512', crypto.digest(crypto.sha512, "Corona HTML5 Rocks!") )

--HMAC
print( '=> HMAC')
print( 'md5', crypto.hmac(crypto.md5, "Corona HTML5 Rocks!", "SomeKey") )
print( 'sha1', crypto.hmac(crypto.sha1, "Corona HTML5 Rocks!", "SomeKey") )
print( 'sha224', crypto.hmac(crypto.sha224, "Corona HTML5 Rocks!", "SomeKey") )
print( 'sha256', crypto.hmac(crypto.sha256, "Corona HTML5 Rocks!", "SomeKey") )
print( 'sha384', crypto.hmac(crypto.sha384, "Corona HTML5 Rocks!", "SomeKey") )
print( 'sha512', crypto.hmac(crypto.sha512, "Corona HTML5 Rocks!", "SomeKey") )

--Encrypt/Decrypt

--AES (default)
print( '=> AES Encrypt/Decrypt')
local encrypted = crypto.encrypt("Corona HTML5 Rocks!", "Passphrase")
print(encrypted)

local decrypted = crypto.decrypt(encrypted, "Passphrase")
print(decrypted)

--Triple DES
print( '=> Triple DES Encrypt/Decrypt')
local encrypted = crypto.encrypt("Corona HTML5 Rocks!", "Passphrase", crypto.des)
print(encrypted)

local decrypted = crypto.decrypt(encrypted, "Passphrase", crypto.des)
print(decrypted)

--Rabbit
print( '=> Rabbit Encrypt/Decrypt')
local encrypted = crypto.encrypt("Corona HTML5 Rocks!", "Passphrase", crypto.rabbit)
print(encrypted)

local decrypted = crypto.decrypt(encrypted, "Passphrase", crypto.rabbit)
print(decrypted)

