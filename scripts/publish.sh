#!/usr/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source $SCRIPTDIR/venv.sh

$SCRIPTDIR/clean.sh
python setup.py sdist bdist_wheel
twine upload dist/*
$SCRIPTDIR/clean.sh
