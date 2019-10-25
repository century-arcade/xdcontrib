SRCPUZ=$1
OUTXD=$2

SRC=$(pwd)
mkdir -p "$OUTXD"
export PYTHONPATH=$SRC:$SRC

for puzpath in `find $SRCPUZ -name '*.puz'`; do
    puz=${puzpath##$SRCPUZ}
    puzname=${puz%.puz}
    xdfile/puz2xd.py "$puzpath" > "$OUTXD"/"$puzname".xd
done
