#!/usr/bin/env sh
set -x
python -m venv env
set +x

set -x
source env/bin/activate
set +x

set -x
python -m pip install --upgrade pip
set +x

set -x
pip install --upgrade pip wheel
set +x

set -x
pip install --upgrade setuptools
set +x

set -x
pip install -r requirements.txt
set +x

set -x
sbase install chromedriver latest
set +x

set -x
pytest --verbose
set +x