#!/bin/bash
#SBATCH --job-name=gitTest                            # Job name
#SBATCH --mail-type=ALL                               # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=wisarut292945@gmail.com                  # Where to send mail
#SBATCH --nodes=1                                     # Run all processes on a single node
#SBATCH --ntasks=1                                    # Run a single task
#SBATCH --cpus-per-task=1                            # Number of CPU cores per task
#SBATCH --nodelist=spica04
##SBATCH --nodelist=castor9
#SBATCH --partition=spica                     # Set partition
#SBATCH --mem=1G                                  # Total memory limit
#SBATCH --time=1:00:00                               # Time limit hrs:min:sec
##SBATCH --time=0:30:00                               # Time limit hrs:min:sec
#SBATCH --output=/lustre/ARRAKIHS/wissarut2/SEDFitting/frameworkSwitcher/logs/gitTestOut_%A_%a.out       # Standard output log
#SBATCH --error=/lustre/ARRAKIHS/wissarut2/SEDFitting/frameworkSwitcher/logs/gitTestErr_%A_%a.error  # Standard error log
#SBATCH --reservation=ARRAKIHS


date;hostname;pwd

# Set working directory
cd /lustre/ARRAKIHS/wissarut2/SEDFitting/frameworkSwitcher

# module load git
module load anaconda

# Load environmen
conda activate cigale

# Run the scheduler code

python3 gitTest.py

git add .
git commit -m "squeue with git test"
git push -u origin dev

date

