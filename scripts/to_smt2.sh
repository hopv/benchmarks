#!/bin/bash

flag_success="success"
flag_error="error"

function run_this {
  options="$1"
  in_file="$2"
  out_file="$3"
  timeout 25 fpice to-hc $options "$in_file" &> "$out_file"
  if [[ "$?" != "0" ]] ; then
    rm "$out_file"
    echo $flag_error
  else
    echo $flag_success
  fi
}

inactive_options=""
red_options="--vc-reduction"
sred_options="$red_options --reduce-only-simple-vc"

inactive_files_error="clauses/files.errors"
red_files_error="clauses/files_red.errors"
sred_files_error="clauses/files_sred.errors"
rm -f "$inactive_files_error"
rm -f "$red_files_error"
rm -f "$sred_files_error"
touch "$inactive_files_error"
touch "$red_files_error"
touch "$sred_files_error"

inactive_files="clauses/files"
red_files="clauses/files_red"
sred_files="clauses/files_sred"
rm -f "$inactive_files"
rm -f "$red_files"
rm -f "$sred_files"
touch "$inactive_files"
touch "$red_files"
touch "$sred_files"

inactive_files_not_red="clauses/files_not_red"
sred_files_not_red="clauses/files_sred_not_red"
rm -f "$inactive_files_not_red"
rm -f "$sred_files_not_red"
touch "$inactive_files_not_red"
touch "$sred_files_not_red"

inactive_files_not_sred="clauses/files_not_sred"
rm -f "$inactive_files_not_sred"
touch "$inactive_files_not_sred"

for ml_file in `find caml -iname "*.ml"` ; do
  hc_file=`echo "$ml_file" | sed -e 's:^caml:clauses:' -e 's:/lia/:/lia/:' -e 's:ml$:smt2:'`
  sred_hc_file=`echo "$ml_file" | sed -e 's:^caml:clauses:' -e 's:/lia/:/lia_sred/:' -e 's:ml$:smt2:'`
  red_hc_file=`echo "$ml_file" | sed -e 's:^caml:clauses:' -e 's:/lia/:/lia_red/:' -e 's:ml$:smt2:'`
  # folder=`echo "$hc_file" | sed -e 's:/[^/]*$::'`
  # mkdir -p $folder

  echo "$ml_file"

  printf "  inactive... "
  inactive_outcome=`run_this "$inactive_options" "$ml_file" "$hc_file"`
  echo "$inactive_outcome"

  printf "      sred... "
  sred_outcome=`run_this "$sred_options" "$ml_file" "$sred_hc_file"`
  echo "$sred_outcome"

  printf "       red... "
  red_outcome=`run_this "$red_options" "$ml_file" "$red_hc_file"`
  echo "$red_outcome"

  if [ "$red_outcome" = "$flag_success" ] \
  && [ "$sred_outcome" = "$flag_success" ] \
  && [ "$inactive_outcome" = "$flag_success" ] ; then
    echo "$red_hc_file" >> "$red_files"
    echo "$sred_hc_file" >> "$sred_files"
    echo "$hc_file" >> "$inactive_files"
  elif [ "$red_outcome" = "$flag_error" ] \
  && [ "$sred_outcome" = "$flag_success" ] \
  && [ "$inactive_outcome" = "$flag_success" ] ; then
    echo "$red_hc_file" >> "$red_files_error"
    echo "$sred_hc_file" >> "$sred_files_not_red"
    echo "$hc_file" >> "$inactive_files_not_red"
  elif [ "$red_outcome" = "$flag_error" ] \
  && [ "$sred_outcome" = "$flag_error" ] \
  && [ "$inactive_outcome" = "$flag_success" ] ; then
    echo "$red_hc_file" >> "$red_files_error"
    echo "$sred_hc_file" >> "$sred_files_error"
    echo "$hc_file" >> "$inactive_files_not_sred"
  elif [ "$red_outcome" = "$flag_error" ] \
  && [ "$sred_outcome" = "$flag_error" ] \
  && [ "$inactive_outcome" = "$flag_error" ] ; then
    echo "$red_hc_file" >> "$red_files_error"
    echo "$sred_hc_file" >> "$sred_files_error"
    echo "$hc_file" >> "$inactive_files_error"
    echo "  total failure..."
  else
    echo "  can't handle this combination of results..."
    exit 2
  fi

done


cat "$inactive_files_not_red" >> "$inactive_files"
rm "$inactive_files_not_red"
cat "$sred_files_not_red" >> "$sred_files"
rm "$sred_files_not_red"

cat "$inactive_files_not_sred" >> "$inactive_files"
rm "$inactive_files_not_sred"