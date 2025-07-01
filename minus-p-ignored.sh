#!/usr/bin/env bash
python3 -m poetry install
cd sub
python3 -m poetry install
cd ..
python3 -m poetry run bash -c "
echo root
echo env info:
poetry env info
echo env list:
poetry env list
cd sub
echo
echo sub
echo env info:
poetry -P . env info
echo env list:
poetry -P . env list
"
