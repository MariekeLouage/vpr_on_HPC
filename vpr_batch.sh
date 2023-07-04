#!/bin/bash

for filepath in $VSC_DATA/vpr/input/blif/*.blif; do
		
		filename=$(basename -- "$filepath")
		CIRCUIT="${filename%.*}"
		
		echo $CIRCUIT
		#-F "$filepath $filename"
		qsub  vpr_job.pbs

done
