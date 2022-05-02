import sys
import os

## This is a utility script for creating synthetic maps. There are a few helper functions to help make obstacles of various dimensions, which can help construct simlpe test scenarios.
# To use, simply modify the Map Construction section, and then run `python utility_scripts/create_syntheetic_map.py {map_name}` from the top level of amrl_maps to create a new synthetic map with the given construction

## --- Helper Functions --- ##
def add_line(x1, y1, x2, y2):
  lines.append((x1, y1, x2, y2))

def add_obstacle(x_center, y_center, x_size, y_size):
  # bottom-left to top-right
  lines.append((x_center - x_size/2.0, y_center - y_size/2.0, x_center + x_size/2.0, y_center - y_size/2.0))
  # bottom-right to top-right
  lines.append((x_center + x_size/2.0, y_center - y_size/2.0, x_center + x_size/2.0, y_center + y_size/2.0))
  # top-left to top-right
  lines.append((x_center - x_size/2.0, y_center + y_size/2.0, x_center + x_size/2.0, y_center + y_size/2.0))
  # top-left to bottom-left
  lines.append((x_center - x_size/2.0, y_center - y_size/2.0, x_center - x_size/2.0, y_center + y_size/2.0))




map_name = sys.argv[1]

if not os.path.exists(map_name):
  os.mkdir(map_name)

map_file = open(os.path.join(map_name, map_name + '.vectormap.txt'), 'w')

lines = []

## --- Map Construction --- ##
# add hallway
add_line(-5, 2.5, 30, 2.5)
add_line(-5, 2.5, -5, -2.5)
add_line(-5, -2.5, 30, -2.5)
add_line(30, 2.5, 30, -2.5)

# add obstacles
add_obstacle(5, -0.75, 0.5, 1)
add_obstacle(7.5, 2, 0.5, 1)
add_obstacle(12.5, 0, 1, 1)
add_obstacle(15, 2, 0.5, 1)
add_obstacle(15, -2, 0.5, 1)
add_obstacle(20, 1.25, 3, 2.5)
add_obstacle(25, -1.25, 3, 2.5)

map_file.writelines([', '.join([str(c) for c in line]) + '\n' for line in lines])
map_file.close()
