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

echo "Running on node: $(hostname)"
echo "Checking internet connectivity..."

# Try pinging google.com
if ping -c 4 google.com > /dev/null 2>&1; then
    echo "Internet access: SUCCESS"
else
    echo "Internet access: FAILED"
fi