#!/bin/bash

gnuplot <<- EOF
	set term png
	set output '$output'
	set xlabel '$LabelX'
	set ylabel '$LabelY'
	set grid
	set key above

	$action
EOF

display $output
#clear