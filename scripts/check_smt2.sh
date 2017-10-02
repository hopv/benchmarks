#!/bin/bash

tmp_file="z3_output.tmp"

for file in `find clauses -iname "*.smt2"` ; do
  printf "$file ... "
  (timeout 2 z3 $file &> "$tmp_file") &> /dev/null
  code="$?"
  if [ "$code" == "137" ] \
  || [ "$code" == "0"   ] ; then
    echo "success"
  else
    echo " error ($code):"
    while read line ; do
      echo "  $line"
    done < "$tmp_file"
    read line
    subl "$file"
    read line
  fi
done

rm -f "$tmp_file"