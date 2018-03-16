#!/bin/bash
#
# blaster.sh
# 
# (c) 2018 by Julien Deseke-Wendt
#
# version 0.0.2
#
####################################################

function run {
        local i N=${1}
        shift
	for ((i=0; i<$N; i++)); do
		eval ${@} &
	done
	wait
}

run ${@}

