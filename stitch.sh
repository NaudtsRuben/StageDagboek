#!/bin/bash

### Used to stitch the weekly .md files together in a README
### call it from the base dir as follows: $ ./stitch.sh ./week-01

dir=$1
for f in $(ls $1 | grep -P "^\d\d-\d\d\.md$")
do
    header=$(echo "# $f" | sed "s/.md//" )
    echo $header
    cat "$dir/$f"
    printf "\n\n\n <hr> \n\n\n"
done > $1/README.md

