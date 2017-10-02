#!/bin/bash

flag_success="success"
flag_error="error"

function run_this {
  options="$1"
  in_file="$2"
  out_file="$3"
  timeout 15 fpice to-hc $options "$in_file" &> "$out_file"
  if [[ "$?" != "0" ]] ; then
    # rm "$out_file"
    echo $flag_error
  else
    echo $flag_success
  fi
}

fpice_options=""

file_listing="clauses/file_listing"
rm -f "$file_listing"
touch "$file_listing"

out_dir="clauses/lia"

mkdir -p out_dir

for ml_file in `find caml/lia -iname "*.ml"` ; do
  smt_file=`echo "$ml_file" | sed -e 's:^caml:clauses:' -e 's:ml$:smt2:'`

  folder=`echo "$smt_file" | sed -e 's:/[^/]*$::'`
  subfolder=`echo "$folder" | sed -e 's:.*/::'`
  mkdir -p "$out_dir/$subfolder"

  echo "$ml_file"
  outcome=`run_this "$fpice_options" "$ml_file" "$smt_file"`

  if [ "$outcome" = "$flag_success" ] ; then
    echo "$smt_file" >> "$file_listing"
  else
    echo "error, exiting..."
    exit 2
  fi

done
