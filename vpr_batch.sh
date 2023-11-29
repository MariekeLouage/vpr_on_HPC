#!/bin/bash
rm -r std*
rm -r $VSC_DATA/vpr/output/*
for filepath in $VSC_DATA/vpr/input/blif/*.blif; do
		
		filename=$(basename -- "$filepath")
		CIRCUIT="${filename%.*}"
		
		echo $CIRCUIT
		#-F "$filepath $filename"
		#qsub -v filename=$CIRCUIT INPUT_FILE=$filepath vpr_job.pbs
		qsub -v filename=$CIRCUIT,INPUT_FILE=$filepath vpr_job.pbs
done
