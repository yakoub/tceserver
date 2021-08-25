#!/usr/bin/bash
function rotate_logs {
	capture="/home/etl/tce_*/tcetest/*log"
	wc_results=`wc -l $capture | tr -s "[:blank:]" ":"`
	for logfile in $wc_results;
	do
		logfile=${logfile#:}
		lines=${logfile%:*};
		logfile=${logfile#*:};
		if [[ $logfile = "total" ]]; then
			continue
		fi
		#echo $logfile has $lines
		if [[ $lines -gt 90000 ]]; then
			archive $logfile;
			echo rotate at `date` > $logfile;
		fi
	done
}

function archive {
	local logfile=$1
	archivefile=${logfile%/*}/`date +%F`-${logfile##*/}
	mv $logfile $archivefile
	gzip $archivefile
}

function simulate {
	for ((i=0;i<100000;i++)); do
		echo $i >> tce_obj/tcetest/mine.log;
	done
	du -hs tce_obj/tcetest/mine.log
}

#simulate
#rotate_logs
