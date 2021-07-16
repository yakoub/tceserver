#!/bin/sh
# Simple script to start tcetest bc
#
home=~
./etlded +set fs_game tcetest  +set fs_homepath "$home/tce_bc" +set com_hunkMegs 512 +set net_port 27970 +exec tce_bc_server.cfg +set sv_maxclients 20 +set g_lms_matchlimit 1 
