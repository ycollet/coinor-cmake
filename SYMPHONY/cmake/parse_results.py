#!/usr/bin/python

import re
import sys

# Example command line
# parse_results.py netlib_fit2d_cbc.log 'Optimal objective <number>' -68464.293294 1e-6
# parse_results.py netlib_fit2d_cbc.log 'Optimal objective <number>' -68464.293294

# comparator = 0 -> "<="
# comparator = 1 -> "<"
# comparator = 2 -> "="
# comparator = 3 -> ">"
# comparator = 4 -> ">="

rel_level  = 1e-6
comparator = 1

if (len(sys.argv) <= 4):
    filename   = sys.argv[1]
    pattern    = sys.argv[2]
    ref_value  = float(sys.argv[3])
elif (len(sys.argv) <= 5):
    filename  = sys.argv[1]
    pattern   = sys.argv[2]
    ref_value = float(sys.argv[3])
    rel_level = float(sys.argv[4])
elif (len(sys.argv) <= 6):
    filename  = sys.argv[1]
    pattern   = sys.argv[2]
    ref_value = float(sys.argv[3])
    rel_level = float(sys.argv[4])
    comparator = int(sys.argv[5])
else:
    print 'usage: parse_result.py filename pattern ref_value [rel_level=1e-6] [comparator=1]'
    sys.exit(1)

if comparator > 4:
    print 'wrong value for comparator (0,1,2,3,4) here: %s' % comparator
    comparator = 1

# Internal variables
number_re = '([-+]?\d+\.*\d*)'

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
        if comparator == 0: # <=
            result = abs(float(match[0]) - ref_value) / max(abs(ref_value), 1e-9) <= rel_level
            print "abs(float(%s) - %d) / max(abs(%d), 1e-9) <= %d ==> %s" % (match[0],ref_value,ref_value,rel_level,result)
        elif comparator == 1: # <
            result = abs(float(match[0]) - ref_value) / max(abs(ref_value), 1e-9) < rel_level
            print "abs(float(%s) - %d) / max(abs(%d), 1e-9) < %d ==> %s" % (match[0],ref_value,ref_value,rel_level,result)
        elif comparator == 2: # =
            result = abs(float(match[0]) - ref_value) / max(abs(ref_value), 1e-9) == rel_level
            print "abs(float(%s) - %d) / max(abs(%d), 1e-9) == %d ==> %s" % (match[0],ref_value,ref_value,rel_level,result)
        elif comparator == 3: # >
            result = abs(float(match[0]) - ref_value) / max(abs(ref_value), 1e-9) > rel_level
            print "abs(float(%s) - %d) / max(abs(%d), 1e-9) > %d ==> %s" % (match[0],ref_value,ref_value,rel_level,result)
        elif comparator == 4: # >=
            result = abs(float(match[0]) - ref_value) / max(abs(ref_value), 1e-9) >= rel_level
            print "abs(float(%s) - %d) / max(abs(%d), 1e-9) >= %d ==> %s" % (match[0],ref_value,ref_value,rel_level,result)
        
        if (not result):
            print "FAILED"
            sys.exit(-1)
        else:
            print "PASSED"
            sys.exit()

print "NOT FOUND"
sys.exit(-1)

