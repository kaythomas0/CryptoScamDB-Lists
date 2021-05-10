#!/bin/sh

grep -Fvx -f potential-false-positives.txt cryptoscamdb-blocklist.txt > tmp &&
mv tmp cryptoscamdb-blocklist.txt
