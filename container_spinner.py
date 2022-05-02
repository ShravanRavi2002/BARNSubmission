import os
import time
import subprocess

NUM_PARALLEL = 2


def main():
    for i in range(0,2):
        with open(str(i) + ".txt", "w") as output: 
            print("spinning" + str(i))
            subprocess.Popen(["./singularity_run.sh", "nav_competition_image.sif", "python3", "run.py" ,"--world_idx", str(i)],stdout=output)


if __name__ == '__main__':
    main()