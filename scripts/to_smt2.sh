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

inactive_options="--no-vc-reduction --no-effect-analysis"
ea_options="--no-vc-reduction"
ea_red_options=""

inactive_options="--no-vc-reduction --no-effect-analysis"
ea_options="--no-vc-reduction"
ea_red_options=""

inactive_files="clauses/files"
ea_files="clauses/files_ea"
ea_red_files="clauses/files_red_ea"
rm -f "$inactive_files"
rm -f "$ea_files"
rm -f "$ea_red_files"
touch "$inactive_files"
touch "$ea_files"
touch "$ea_red_files"

inactive_dir="clauses/lia"
ea_dir="clauses/lia_ea"
ea_red_dir="clauses/lia_ea_red"

mkdir -p inactive_dir
mkdir -p ea_dir
mkdir -p ea_red_dir

for ml_file in `find caml -iname "*.ml"` ; do
  inactive_file=`echo "$ml_file" | sed -e 's:^caml:clauses:' -e 's:ml$:smt2:'`
  ea_file=`echo "$inactive_file" | sed -e "s:$inactive_dir/:$ea_dir/:"`
  ea_red_file=`echo "$inactive_file" | sed -e "s:$inactive_dir/:$ea_red_dir/:"`

  folder=`echo "$inactive_file" | sed -e 's:/[^/]*$::'`
  subfolder=`echo "$folder" | sed -e 's:.*/::'`
  mkdir -p "$ea_dir/$subfolder"
  mkdir -p "$ea_red_dir/$subfolder"

  echo "$ml_file"

  printf "  inactive... "
  inactive_outcome=`run_this "$inactive_options" "$ml_file" "$inactive_file"`
  echo "$inactive_outcome"

  printf "        ea... "
  ea_outcome=`run_this "$ea_options" "$ml_file" "$ea_file"`
  echo "$ea_outcome"

  printf "  red + ea... "
  ea_red_outcome=`run_this "$ea_red_options" "$ml_file" "$ea_red_file"`
  echo "$ea_red_outcome"

  if [ "$inactive_outcome" = "$flag_success" ] \
  && [ "$ea_outcome" = "$flag_success" ] \
  && [ "$ea_red_outcome" = "$flag_success" ] ; then
    echo "$inactive_file" >> "$inactive_files"
    echo "$ea_file" >> "$ea_files"
    echo "$ea_red_file" >> "$ea_red_files"
  else
    echo "error, exiting..."
    exit 2
  fi

done
