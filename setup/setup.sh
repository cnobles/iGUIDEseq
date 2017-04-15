#!/bin/bash
# Setup bash script for conda environment guide-seq-pipe
conda config --prepend channels 'bushmanlab'
conda config --prepend channels 'r'
conda config --prepend channels 'bioconda'
conda create -n guide-seq-pipe --file ./setup/requirements.txt --yes
source activate guide-seq-pipe
cd scripts/
git clone https://github.com/cnobles/dualDemultiplexR.git
cd ../
Rscript ./setup/bioconductor_setup.R
