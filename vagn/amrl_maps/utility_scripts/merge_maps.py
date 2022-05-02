import os
import argparse
# NOTE: This script merges an arbitrary number of maps, and deletes any "common" lines between them, so we don't end up with double lines
# If one of the maps deleted a line, and the other reintroduces it, the line *will* be there in the output, so this can be thought of as
# an "additive-only" merge between maps

parser = argparse.ArgumentParser('Merge maps together, additively')
parser.add_argument('--maps', nargs='+')
parser.add_argument('--out_file', type=str)
args = parser.parse_args()
map_lines = []


def is_same(line1, line2):
  line1_coords = [round(float(c.strip()), 1) for c in line1.split(', ')]
  line2_coords = [round(float(c.strip()), 1) for c in line2.split(', ')]

  return all([line1_coords[i] == line2_coords[i] for i in range(0, 4)])


def has_line(line):
  for map_line in map_lines:
    if is_same(line, map_line):
      return True

  return False

for map in args.maps:
  map_file = open(map, 'r')
  overlap = 0
  for line in map_file.readlines():
    if not has_line(line):
      map_lines.append(line)
    else:
      overlap += 1
  print("Found {} lines of overlap".format(overlap))

with open(args.out_file, 'w') as f:
  f.write(''.join(map_lines))

