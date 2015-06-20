#!/bin/bash

# PDF2CBZ
# http://felipem.com
# v1.0 2015.06.20

DIR="/tmp/pdf2cbr-$$"
mkdir $DIR
convert -density 75 $1 $DIR/pages-%04d.jpg 2>&1
7z a $DIR/$1.zip $DIR/*.jpg 2>&1 > /dev/null
mv $DIR/$1.zip $1.cbz 2>&1
rm -r $DIR
