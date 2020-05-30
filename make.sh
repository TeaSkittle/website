#!/usr/bin/sh
# (c) Travis Dowd
# Date: 5-30-2010
#
# make file for simple website

basename -s .md *md | grep -v "README" > temp

while read p; do
  perl cnv.pl $p.md $p
done <temp
