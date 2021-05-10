# CryptoScamDB-Lists

Various lists in plain text format from CrytoScamDB to be used with services such as Pi-hole

All data taken from CryptoScamDB: https://cryptoscamdb.org/

There are some false positives that are removed (for example, twitter.com
is in the API response because people have reported specific twitter accounts, but we
obviously don't want that in the list). To get around this, I have removed all domains
found in the top 500 domains list using `remove-top-domains.sh`.

## The Lists

Blocklist: https://gitlab.com/KevinThomas0/cryptoscamdb-lists/-/raw/master/cryptoscamdb-blocklist.txt

Allowlist: https://gitlab.com/KevinThomas0/cryptoscamdb-lists/-/raw/master/cryptoscamdb-allowlist.txt

## List Descriptions (from CryptoScamDB)

cryptoscamdb-blocklist.txt: - Returns a list of blacklisted domains (https://api.cryptoscamdb.org/v1/blacklist)

cryptoscamdb-allowlist.txt: - Returns a list of whitelisted domains (https://api.cryptoscamdb.org/v1/whitelist)

## Automatic Updates

Lists are updated periodically using the following commands:

`curl --location --request GET 'https://api.cryptoscamdb.org/v1/blacklist' | jq -r '.result[]' > cryptoscamdb-blocklist.txt && ./remove-top-domains.sh`

`curl --location --request GET 'https://api.cryptoscamdb.org/v1/whitelist' | jq -r '.result[]' > cryptoscamdb-allowlist.txt`

