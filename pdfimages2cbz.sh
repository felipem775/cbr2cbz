#!/bin/bash

# PDFimages2CBZ
# http://felipem.com
# v1.0 2015.06.20

DIR="/tmp/pdf2cbr-$$"
mkdir $DIR
pdfimages -j "$1" $DIR/pages.jpg 2>&1
7z a "$DIR/tmp.zip" "$DIR/*.jpg" 2>&1 > /dev/null
mv "$DIR/tmp.zip" "${1/.pdf/.cbz}" 2>&1
rm -r $DIR
