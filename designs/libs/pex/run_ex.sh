#!/usr/bin/env bash
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null
if [ "$#" -ne 1 ]; then
    echo "Missing argument: Name of cell"
    exit 1
fi

CELL=$1

cat > /tmp/magic_extract.tcl << MAGICEOF
gds read $CELL
load $CELL
select top cell
expand
flatten ${CELL}_flat
load ${CELL}_flat
select top cell
cellname delete $CELL
cellname rename ${CELL}_flat $CELL
extract path extfiles
extract all
ext2sim labels on
ext2sim -p extfiles
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -p extfiles
quit
MAGICEOF

magic -rcfile $PDK_ROOT/$PDK/libs.tech/magic/$PDK.magicrc -dnull -noconsole /tmp/magic_extract.tcl
exit 0
