#!/usr/bin/bash

source /home/etl/bin/rotate_logs.sh

cd /home/etl/etlegacy
./tce_screens.sh stop
rotate_logs
./tce_screens.sh
date >> /home/etl/restart_log
