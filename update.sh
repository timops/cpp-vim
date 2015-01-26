#!/bin/bash

MODULES='ctrlp.vim delimitMate nerdtree tagbar syntastic'

for module in $MODULES
do
  (cd $PWD/bundle/$module && git fetch && git merge origin/master)
  if [ $? -ne 0 ]; then
    echo "[ERROR]: unable to update module $module"
    exit 1
  fi
done
