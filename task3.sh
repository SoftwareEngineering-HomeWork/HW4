#!/bin/bash

awk -F ',' '
BEGIN {OFS=","}
NR == 1 {print $0; next}
$3 == 2 && $13 ~ /S/ {
    gsub(/female/, "F", $0)
    gsub(/male/, "M", $0)
    print $0
    if ($7 != "") {sum += $7; count++}
}
END {
    if (count > 0) print "Average Age:" sum / count
    else print "No valid ages found."
}' titanic.csv | tee task3_filtered_output.csv
