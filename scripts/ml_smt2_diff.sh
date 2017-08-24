#!/bin/bash

for ml_file in `find caml -iname "*.ml"` ; do
  hc_file=`echo "$ml_file" | sed -e 's:^caml:clauses:' -e 's:ml$:smt2:'`
  if [[ ! -f $hc_file ]] ; then
    echo "$ml_file has no smt2 counterpart"
  fi
done