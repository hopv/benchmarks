#!/bin/bash

set -e

if [ `uname` == "Linux" ] ; then
  sed_cmd="sed"
else
  sed_cmd="gsed"
fi

libs="libs"
dorder_z3="$libs/dorder_libz3.so"
fpice_z3="$libs/fpice_libz3.so"

function cleanup {
  printf "cleaning up..."
  ./scripts/cleanup.sh
  echo " success"
  echo
}

function check_code {
  if [ "$?" -ne "0" ] ; then
    echo " failure"
    exit 2
  fi
}

benchi_cmd="benchi -q -f on run -t 100s --benchs 1 --tools 1"

printf "checking for dorder and fpice z3 libs..."
if [ ! -f "$dorder_z3" ] ; then
  echo "\ncould not find \"$dorder_z3\", stopping"
  exit 2
elif [ ! -f "$fpice_z3" ] ; then
  echo "\ncould not find \"$fpice_z3\", stopping"
  exit 2
fi
echo " success"

cleanup

printf "running fpice and mochi..."
$benchi -o runs/ml_\<today\> runs/conf/all_ml.conf caml/files
check_code
echo " success"
echo

cleanup

printf "running dorder..."
$benchi -o runs/ml_\<today\> runs/conf/dorder.conf caml/files_dorder
$sed_cmd -i 's:/dorder_lia:/lia:'
check_code
echo " success"
echo

cleanup

printf "running z3 (all variants) and hoice..."
$benchi -o runs/smt_\<today\> runs/conf/smt2.conf
check_code
echo " success"
echo

printf "running eldarica..."
$benchi -o runs/smt_\<today\> runs/conf/eld.conf
check_code
echo " success"
echo

cleanup

echo "done"

exit 0
