SRCPUZ=$1
OUTXD=$2

mkdir -p "$OUTXD"

for puzpath in `find $SRCPUZ -name '*.puz'`; do
    puz=${puzpath##$SRCPUZ}
    puzname=${puz%.puz}
    xdfile/puz2xd.py "$puzpath" > "$OUTXD"/"$puzname".xd
done
