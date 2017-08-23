#!/bin/bash

md5_file="./md5sums.tmp"
dup_file="./dups.tmp"

if [[ "$OSTYPE" == "linux-gnu" ]] || [[ "$OSTYPE" == "cygwin" ]] ; then
  md5_cmd="md5sum"
elif [[ "$OSTYPE" == "darwin"* ]] ; then
  md5_cmd="md5 -r"
else
  echo "unsupported OS $OSTYPE"
  exit 2
fi

dup_count="0"

# echo "computing md5's, writing to file $md5_file..."
find . -type f -iname "*.ml" -exec $md5_cmd {} \; > "$md5_file"
# echo "sorting..."
gawk '{print $1}' "$md5_file" | sort | uniq -d > "$dup_file"

# echo "looking for duplicates..."
while read line ; do
  dups=`grep $line $md5_file | cut -d ' ' -f 2-`
  keeping=`echo "$dups" | head -n 1`
  echo "duplicates of $keeping"
  # dismiss the first one~~~~~vvvvvvvvvv
  for file in `echo "$dups" | tail -n +2` ; do
    # rename the others
    echo "> $file"
    # count
    let "dup_count += 1"
  done
  echo
done < "$dup_file"

# echo "cleaning up..."
rm -f "$md5_file" "$dup_file"

echo "done, found $dup_count duplicate(s)"
exit 0
