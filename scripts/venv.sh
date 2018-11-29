#!/usr/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

VENVPATH=$SCRIPTDIR/../.venv
mkdir -p $VENVPATH 

VENV=$VENVPATH/biomap-utils

if [ ! -f $VENV ]; then 
    python3 -m venv $VENV 
fi

source $VENV/bin/activate

if [ ! -f $VENVPATH/biomap-utils ]; then 
    pip install -r $VENVPATH/requirements.txt
fi
