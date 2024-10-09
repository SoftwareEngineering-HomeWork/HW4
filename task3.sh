awk -F',' '$3 == 2 && $13 == "S"' titanic.csv | sed 's/female/F/: s/male/M' | awk -F',' '$7 != "" {sum += $7; count++} END {print sum/count}'
