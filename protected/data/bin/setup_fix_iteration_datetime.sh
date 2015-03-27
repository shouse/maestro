#!/bin/sh
#
# Fixes (modifies) directory and file modified dates in repo
# according to design iteration dates.
# - MUST run as root (required to set root as file owner)
# - MUST run from /home/maestro/scc/bin/
#
# Iteration:
# 1  Prototype                   2013-01-01
# 2  PCB Revision                2013-01-02
# 3  Product Release             2013-01-03
# 4  Manufacturing Improvements  2013-01-04
# 5  Field spares kit            2013-01-05
#
# Refer to the Maestro project Wiki for more information.
#

# master data files that currently don't include iteration
echo "setup_fix_iteration_datetime: ods, tdl"
touch -t 201301010101 ../ods/*
touch -t 201301010101 ../tdl/*

echo "setup_fix_iteration_datetime: Iteration 1 pv, csv"
touch -t 201301010101 ../pv/pv-1.mdb
touch -t 201301010101 ../csv-pv-1/*
find ../parts-1 -exec touch -t 201301010101 {} \;
find ../parts-1-nover -exec touch -t 201301010101 {} \;

echo "setup_fix_iteration_datetime: Iteration 2 pv, csv"
touch -t 201301020101 ../pv/pv-2.mdb
touch -t 201301020101 ../csv-pv-2/*
find ../parts-2 -exec touch -t 201301020101 {} \;
find ../parts-2-nover -exec touch -t 201301020101 {} \;

echo "setup_fix_iteration_datetime: Iteration 3 pv, csv"
touch -t 201301030101 ../pv/pv-3.mdb
touch -t 201301030101 ../csv-pv-3/*
find ../parts-3 -exec touch -t 201301030101 {} \;
find ../parts-3-nover -exec touch -t 201301030101 {} \;

echo "setup_fix_iteration_datetime: Iteration 4 pv, csv"
touch -t 201301040101 ../pv/pv-4.mdb
touch -t 201301040101 ../csv-pv-4/*
find ../parts-4 -exec touch -t 201301040101 {} \;
find ../parts-4-nover -exec touch -t 201301040101 {} \;

echo "setup_fix_iteration_datetime: Iteration 5 pv, csv"
touch -t 201301050101 ../pv/pv-5.mdb
touch -t 201301050101 ../csv-pv-5/*
find ../parts-5 -exec touch -t 201301050101 {} \;
find ../parts-5-nover -exec touch -t 201301050101 {} \;
