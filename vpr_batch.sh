#!/bin/bash

for filename in $PBS_DATA/vpr/input/blif/*.blif; do
    for ((i=0; i<=3; i++)); do
		echo $filename
        #qsub ./MyProgram.exe "$filename" "Logs/$(basename "$filename" .txt)_Log$i.txt"
		
    done
done
