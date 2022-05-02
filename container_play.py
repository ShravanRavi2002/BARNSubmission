import os
import time
import subprocess
import sys
map_number = int(sys.argv[1])
def main():
    for i in range(map_number, map_number + 1):
        with open(str(i) + ".txt", "w") as output: 
            print("spinning" + str(i))
            subprocess.Popen(["./singularity_run.sh", "nav_competition_image.sif", "python3", "run.py" ,"--world_idx", str(i)],stdout=output)
        if(i % 7 == 0 and i != 0):
            time.sleep(100)


if __name__ == '__main__':
    main()