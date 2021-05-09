# CryptoScamDB-Lists

Various lists in plain text format from CrytoScamDB to be used with services such as Pi-hole

All data taken from CryptoScamDB: https://cryptoscamdb.org/

## List Descriptions

cryptoscamdb-blocklist.txt: https://api.cryptoscamdb.org/v1/blacklist - Returns a list of blacklisted domains.

cryptoscamdb-allowlist.txt: https://api.cryptoscamdb.org/v1/whitelist - Returns a list of whitelisted domains.

## Notes

Lists are updated periodically using the following commands:

`curl --location --request GET 'https://api.cryptoscamdb.org/v1/blacklist' | jq -r '.result[]' > cryptoscamdb-blacklist.txt`

`curl --location --request GET 'https://api.cryptoscamdb.org/v1/whitelist' | jq -r '.result[]' > cryptoscamdb-allowlist.txt`

