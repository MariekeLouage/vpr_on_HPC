#!/bin/bash

for filepath in $VSC_DATA/vpr/input/blif/*.blif; do
		echo $filename
        #qsub ./MyProgram.exe "$filename" "Logs/$(basename "$filename" .txt)_Log$i.txt"
		
		filename=$(basename -- "$filepath")
		CIRCUIT="${filename%.*}"
		
		echo $CIRCUIT
		qsub -F "$filepath $filename" vpr_job.pbs

done
