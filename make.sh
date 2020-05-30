#!/usr/bin/sh
# (c) Travis Dowd
# Date: 5-30-2010
#
# make file for simple website

# convert from markdown to html
for file in md/*.md
do
  name=$(basename -s .md "$file")
  perl cnv.pl "$file" "$name"
done

# Change to html file extension
for file in html/*.md
do
  mv "$file" "${file%.md}.html"
done
