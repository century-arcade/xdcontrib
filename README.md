# xd Contributor Onboarding

Thanks for offering to contribute to xd!

This is a repo of helper scripts for converting puzzles to .xd and importing them into gxd repo.

## Setup

In a terminal window, type (or some variant according to your system):

`pip3 install -r requirements.txt`

## Convert one puz puzzle on the command line

Download a puzzle, for example from the [eminent Brendan Emmett Quigley](https://www.brendanemmettquigley.com/files/1199AyeAye.puz):

```
xdfile/puz2xd.py test.puz > test.xd
```

## Convert one ipuz puzzle on the command line

The `crossword` module's `from_ipuz` needed to be updated, due to changes in the `ipuz` Python module.

It has been incorporated into this repo with those updates.

First, ensure that Python can find it

```
export PYTHONPATH=.
```

and then

```
xdfile/ipuz2xd.py test.ipuz > test.xd
```

## Converting puz/ipuz puzzles in bulk

```
sh convert_puz.sh <srcdir> <destdir>
```

or

```
sh convert_ipuz.sh <srcdir> <destdir>
```

where:

- `<srcdir>` is the directory holding the .puz
- `<destdir>` is the the directory which will hold the .xd

## Filenames

The input .puz currently must adhere to the standard filename format (`idYYYY-MM-DD.puz` or `id-NNN.puz`) or the xdfile.py script won't convert it.

To be merged into gxd, the output file must be named correctly, and the file must be in the correct directory.  For example:

`latimes/2019/lat2019-10-11.xd`

(Non-daily publications generally omit the year directory.)

## Creating a PR on Gitlab

1. Create a new empty repo on gitlab.
2. Commit and push the puzzles to a branch.
3. Invite me to the repo on gitlab.
4. You'll be added as a collaborator to the gxd repo.
5. Submit a PR from your repo to gxd.

---
Don't give these puzzles to anyone else.
These puzzles are to be used only for research, and not for consumption.

---

## `publications.tsv`

If filename has an unknown pubid, the xd pipeline won't analyze it properly.
If the publication is legitimate but unknown, add a row to `publications.tsv`
in the root of the gxd repo.

---

# Citing xd

If you publish any research or results using the xd crossword corpus, please cite xd accordingly:

```
Pwanson, Saul. (2019). "xd Crossword Corpus." Retrieved from http://xd.saul.pw
```

The year of publication should be the year that the corpus was accessed.
