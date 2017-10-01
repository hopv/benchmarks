#!/bin/bash

while read file ; do
  basename=`echo "$file" | sed -e 's:.*/::' -e 's:\..*::'`
  harness=`find ~/runs/2017_aplas/for_dorder -iname "*${basename}_harness" | head -n 1`
  target_harness=`echo "$file" | sed -e 's:/lia/:/dorder_lia/:' -e 's:\.ml:_harness:'`
  if [ "$harness" != "" ] ; then
    # echo "  cp $harness $target_harness"
    cp $harness $target_harness
  elif [ -f "$target_harness" ] ; then
    :
  else
    echo "> $basename"
    echo "  no harness, please create one by hand of the form"
    echo "let _ = fprintf outch \"env:newtest\t\n\""
    echo "let _ = main 0 ... 0"
    echo "             ^^^^^^^~~~~~ number of arguments"
    echo "  -> $target_harness"
    exit 2
  fi
done < caml/files
