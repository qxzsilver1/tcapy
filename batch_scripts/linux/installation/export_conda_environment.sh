#!/bin/bash

# Create an environment YAML file from the conda environment, that can later be used to recreate that
# conda environment
export SCRIPT_FOLDER="$( dirname "$(readlink -f -- "$0")" )"
source $SCRIPT_FOLDER/set_tcapy_env_vars.sh

conda update -n base conda --yes
conda env export > $TCAPY_CUEMACRO/batch_scripts/linux/installation/environment_linux_py36tcapy.yml