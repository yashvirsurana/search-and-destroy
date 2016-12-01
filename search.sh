#!/bin/bash

rm -r outdir/

pssh -h drill_hall -o outdir /afs/inf.ed.ac.uk/user/s13/s1341139/git/search-and-destroy/get_name.sh $1

cat outdir/*
rm -r outdir/
