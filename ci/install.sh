#!/bin/bash -ex

python3 -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade -r docs/requirements.txt
python3 -m pip install -e .
