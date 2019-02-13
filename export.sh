#!/bin/sh


VERSION=1.0
SRC_MD='CODE_OF_CONDUCT.md'
TITLE="Code of Merit v$VERSION"
STYLESHEET='./css/default.css'

#get current checksum
CKSUM=$(cksum $SRC_MD | cut -d' ' -f 1)

#is there markdown-pdf?
#markdown-pdf -f A4 -o code_of_conduct.pdf CODE_OF_CONDUCT.md

markdown-pdf -s $STYLESHEET -f A4 -o code_of_conduct.pdf $SRC_MD


#is there pandoc?
#pandoc --from=markdown_mmd+yaml_metadata_block+smart --standalone --to=html -V css=./css/default.css --metadata pagetitle="$TITLE" --output="$CKSUM.htm" $SRCMD
