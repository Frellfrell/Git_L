#!/bin/env bash

for filepath in /opt/240125-wde/Ella_Gubareva/dir1/*; do
    filename=$(basename "$filepath")

if (( filename % 2 == 0 )); then
   mv "$filepath" /opt/240125-wde/Ella_Gubareva/dir2/

echo "File $filename in /Ella_Gubareva/dir2"

else

echo "File $filename in /Ella_Gubareva/dir1"

fi
done

echo "Ready"
