#!/usr/bin/python
import sys
import struct

out_file = file(sys.argv[1] + ".scaled","wb")
in_file = file(sys.argv[1],"r")

factor = float(sys.argv[2])

while 1:
    line = in_file.readline()       
    if not line:
       break
    f1,f2,f3,f4 = line.split(',')
    out_file.write(str(float(f1)*factor) + "," + str(float(f2)*factor) + "," + str(float(f3)*factor)+ "," + str(float(f4)*factor) + "\n")

out_file.close()
in_file.close()


