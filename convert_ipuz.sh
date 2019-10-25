SRCIPUZ=$1
OUTXD=$2

SRC=$(pwd)
mkdir -p "$OUTXD"
export PYTHONPATH=$SRC:$SRC

for ipuzpath in `find $SRCIPUZ -name '*.ipuz'`; do
    ipuz=${ipuzpath##$SRCIPUZ}
    ipuzname=${ipuz%.puz}
    xdfile/ipuz2xd.py "$ipuzpath" > "$OUTXD"/"$ipuzname".xd
done
