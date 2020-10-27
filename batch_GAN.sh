#!/bin/bash
#SBATCH -A research
#SBATCH --job-name=___
#SBATCH --qos=medium
#SBATCH -n 40
#SBATCH --gres=gpu:4
#SBATCH --output=DCGAN_Q%j.txt       # Output file.
#SBATCH --mail-type=END                # Enable email about job finish 
#SBATCH --mail-user=sandeep.nagar@research.iiit.ac.in    # Where to send mail  
#SBATCH --mem-per-cpu=3000
#SBATCH --time=4-00:00:00
#SBATCH --mail-type=END

module load cudnn/7-cuda-10.0


mpiexec -n 4 python DCGAN.py
