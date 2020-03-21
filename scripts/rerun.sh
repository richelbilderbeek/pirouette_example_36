#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex36
#SBATCH --output=example_36.log
#
rm -rf example_36
rm *.png
time Rscript example_36.R
zip -r pirouette_example_36.zip example_36 example_36.R scripts *.png

