#!/bin/env bash

for i in {1..100}; do

    filename=$RANDOM
    touch "/opt/240125-wde/Ella_Gubareva/dir1/$filename"
done

echo "Add 100 random files in /Ella_Gubareva/dir1"
