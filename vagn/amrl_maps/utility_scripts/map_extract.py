#!/usr/bin/python

# How to make maps with lines
# Get the dwg file from the SCS facilities website
# Open in Autodesk Design Review, mask extra layers except walls and glass
# print to pdf file
# open pdf in inkscape
# save as java fx file
# pass as argument to this program

import sys

if len(sys.argv) != 2:
	print 'Usage: map_extract filename.fx'

f = open(sys.argv[1], 'r')

x = 0.0
y = 0.0
ignore = False
m = f.readline()

while True:
	# EOF
	if m == '':
		break
	m = m.strip()

	#s = 'stroke: Color.rgb('
	#if m.startswith(s):
	#	t = m[len(s):]
	#	print t
	#	if t.startswith('0xb'):
	#		ignore = False
	#	else:
	#		ignore = True

	# begin new line segment
	if m == 'MoveTo {':
		linex = f.readline().strip()
		liney = f.readline().strip()
		if linex[0:3] != 'x: ':
			print 'Expected x coordinate.'
			sys.exit(-1)
		if liney[0:3] != 'y: ':
			print 'Expected y coordinate.'
			sys.exit(-1)
		x = float(linex[3:])
		y = float(liney[3:])
	
	if m == 'LineTo {':
		linex = f.readline().strip()
		liney = f.readline().strip()
		if linex[0:3] != 'x: ':
			print 'Expected x coordinate.'
			sys.exit(-1)
		if liney[0:3] != 'y: ':
			print 'Expected y coordinate.'
			sys.exit(-1)
		new_x = float(linex[3:])
		new_y = float(liney[3:])
		
		# look ahead to see if this is last point, if so ignore it due to bug
		m = f.readline()
		m = f.readline().strip()
		if not m.startswith(']') and not m.startswith('MoveTo'):
			if not ignore:
				print str(x) + ', ' + str(-y) + ', ' + str(new_x) + ', ' + str(-new_y)
		x = new_x
		y = new_y
	else:
		m = f.readline()
	

