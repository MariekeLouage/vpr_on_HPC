#!/bin/bash

for filename in $VSC_DATA/vpr/input/blif/*.blif; do
		echo $filename
        #qsub ./MyProgram.exe "$filename" "Logs/$(basename "$filename" .txt)_Log$i.txt"

done
