#!/bin/bash

if [ ! -d "resources" ]; then
  echo "[] please design and link the resources folder first"
  exit 1
fi

python3 -m compileall config.py utils.py qbic.py

