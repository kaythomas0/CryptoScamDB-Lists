#!/bin/sh

grep -Fvx -f top-500-domains.txt cryptoscamdb-blocklist.txt > tmp &&
mv tmp cryptoscamdb-blocklist.txt
