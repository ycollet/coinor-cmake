#!/usr/bin/python

import re
import sys

# Example command line
# parse_results.py netlib_fit2d_cbc.log 'Optimal objective <number>' -68464.293294 1e-6
# parse_results.py netlib_fit2d_cbc.log 'Optimal objective <number>' -68464.293294

if (len(sys.argv) <= 4):
    filename  = sys.argv[1]
    pattern   = sys.argv[2]
    ref_value = float(sys.argv[3])
    rel_level = 1e-6
elif (len(sys.argv) <= 5):
    filename  = sys.argv[1]
    pattern   = sys.argv[2]
    ref_value = float(sys.argv[3])
    rel_level = float(sys.argv[4])
else:
    print 'usage: parse_result.py filename pattern ref_value [rel_level=1e-6]'
    sys.exit(1)

# Internal variables
number_re = '([-+]+\d+\.*\d*)'

# Generate the regular expression
pattern = pattern.replace('<number>', number_re)

# Make sure file gets closed after being iterated
with open(filename, 'r') as f:
   # Read the file contents and generate a list with each line
   lines = f.readlines()

# Iterate each line
for line in lines:
    # Regex applied to each line 
    match = re.findall(pattern, line)
    if match:
        result = abs(float(match[0]) - ref_value) / abs(ref_value) < rel_level
        if (not result):
            print "FAILED"
        else:
            print "PASSED"
