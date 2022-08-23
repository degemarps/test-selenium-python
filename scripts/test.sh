#!/usr/bin/env sh
set -x
python -m venv env
set +x

set -x
. env/bin/activate
set +x

set -x
pip install -r requirements.txt
set +x

set -x
sbase install chromedriver latest
set +x

set -x
pytest --headless
set +x