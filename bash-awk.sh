#!/bin/bash

mval=`awk -F "," '{ print $6 }' 100-records.txt | sort | grep "F" | wc -l`
fval=`awk -F "," '{ print $6 }' 100-records.txt | sort | grep "M" | wc -l`

echo "Number of FEMALES, ", $fval
echo "Number of MALES, ", $mval
