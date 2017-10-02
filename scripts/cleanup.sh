#!/bin/bash

echo "depolluting dorder..."

echo "- '*_instru*' files in 'caml/'..."
for file in `find caml -iname '*_instru*' -type f` ; do
  rm "$file"
done

echo "depolluting mochi..."

echo "- '*.quals' files in 'caml/'..."
for file in `find caml -iname '*.quals' -type f` ; do
  rm "$file"
done

echo "- '*.horsat_out' files in 'caml/'..."
for file in `find caml -iname '*.horsat_out' -type f` ; do
  rm "$file"
done

echo "- non-ml files in 'caml/lia/'..."
for file in `find caml/lia -iname '*[^(ml)]' -type f` ; do
  rm "$file"
done

echo "- 'constraints.dot' 'gmon.out' 'good.mat' and 'mllog'..."
rm -f constraints.dot gmon.out good.mat mllog

