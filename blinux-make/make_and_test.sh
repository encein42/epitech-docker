#!/bin/bash -xe
./norme_deepthought.py rendu -score -nocheat -swap_traces -malloc >> norm.dpr 2> norm.note
make -C rendu
cp -rn rendu/* .
bugs -out "wud xunit"
