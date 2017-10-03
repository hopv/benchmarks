#!/bin/bash

set -e

if [ `uname` == "Linux" ] ; then
  sed_cmd="sed"
else
  sed_cmd="gsed"
fi

if [ `uname` == "Linux" ] ; then
  dylib_ext="so"
else
  dylib_ext="dylib"
fi

libs="libs"
dorder_z3="$libs/dorder_libz3.$dylib_ext"
fpice_z3="$libs/fpice_libz3.$dylib_ext"

function cleanup {
  printf "cleaning up..."
  ./scripts/cleanup.sh &> /dev/null
  rm -f "libz3.$dylib_ext"
  echo " success"
  echo
}

function check_code {
  if [ "$?" -ne "0" ] ; then
    echo " failure"
    exit 2
  fi
}

function bench {
  benchi -q -f on run -t 100s --benchs 1 --tools 1 -o $1 $2 $3
}

printf "checking for dorder and fpice z3 libs..."
if [ ! -f "$dorder_z3" ] ; then
  echo
  echo "could not find \"$dorder_z3\", stopping"
  exit 2
elif [ ! -f "$fpice_z3" ] ; then
  echo
  echo "could not find \"$fpice_z3\", stopping"
  exit 2
fi
echo " success"

cleanup

cp "$fpice_z3" "libz3.$dylib_ext"
printf "running fphoice and mochi (runs/ml)..."
bench runs/ml runs/conf/all_ml.conf caml/files
check_code
echo " success"
echo

cleanup

cp "$dorder_z3" "libz3.$dylib_ext"
printf "running dorder (runs/ml)..."
bench runs/ml runs/conf/dorder.conf caml/files_dorder
$sed_cmd -i 's:/dorder_lia:/lia:' runs/ml/dorder.data
check_code
echo " success"
echo

cleanup

printf "running z3 (all variants) and hoice (runs/smt)..."
bench runs/smt runs/conf/all_smt2.conf clauses/files
check_code
echo " success"
echo

printf "running eldarica (runs/smt)..."
bench runs/smt runs/conf/eld.conf clauses/files
check_code
echo " success"
echo

cleanup

echo "done"

exit 0
