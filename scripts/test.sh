#!/usr/bin/env sh
set -x
python -m venv env
set +x

set -x
source env/bin/activate
set +x

set -x
pip install selenium
pip install seleniumbase
pip install -U pytest
set +x

set -x
sbase install chromedriver latest
set +x

set -x
pytest --headless
set +x