# CryptoScamDB-Lists

Various lists in plain text format from CrytoScamDB to be used with services such as Pi-hole

All data taken from CryptoScamDB: https://cryptoscamdb.org/

## The Lists

Blocklist: https://gitlab.com/KevinThomas0/cryptoscamdb-lists/-/raw/master/cryptoscamdb-blocklist.txt

Allowlist: https://gitlab.com/KevinThomas0/cryptoscamdb-lists/-/raw/master/cryptoscamdb-allowlist.txt

## List Descriptions (from CryptoScamDB)

cryptoscamdb-blocklist.txt: - Returns a list of blacklisted domains (https://api.cryptoscamdb.org/v1/blacklist)

cryptoscamdb-allowlist.txt: - Returns a list of whitelisted domains (https://api.cryptoscamdb.org/v1/whitelist)

## Notes

Lists are updated periodically using the following commands:

`curl --location --request GET 'https://api.cryptoscamdb.org/v1/blacklist' | jq -r '.result[]' > cryptoscamdb-blacklist.txt`

`curl --location --request GET 'https://api.cryptoscamdb.org/v1/whitelist' | jq -r '.result[]' > cryptoscamdb-allowlist.txt`

