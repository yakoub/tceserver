#!/bin/sh
# Simple script to start tcetest ctf 
#
home=~
./etlded +set fs_game tcetest +set fs_homepath "$home/tce_ctf" +set com_hunkMegs 256 +set net_port 27920 +exec tce_ctf_server.cfg +set sv_maxclients 20 +set g_lms_matchlimit 1 
