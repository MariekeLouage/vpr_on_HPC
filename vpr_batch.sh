#!/bin/bash

for filepath in $VSC_DATA/vpr/input/blif/*.blif; do
		
		filename=$(basename -- "$filepath")
		CIRCUIT="${filename%.*}"
		
		echo $CIRCUIT
		qsub -F "$filepath $filename" vpr_job.pbs

done
