#!/bin/bash

eval "$(/root/anaconda/bin/conda shell.bash hook)"
conda update -n base -c defaults conda -q -y
conda activate base
cd notebooks/
jupyter notebook --allow-root --ip=0.0.0.0 --port=8888 --no-browser