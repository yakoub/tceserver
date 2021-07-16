#!/usr/bin/bash

screen -m -d -S tce_obj ./etlded_tce.sh
screen -m -d -S tce_bc ./etlded_tce_bc.sh
screen -m -d -S tce_ctf ./etlded_tce_ctf.sh
screen -ls
