#!/bin/sh
# Simple script to start tcetest obj
#
home=~
./etlded +set fs_game tcetest +set fs_homepath "$home/tce_obj" +set com_hunkMegs 512 +exec tce_server.cfg +set sv_maxclients 20 +set g_lms_matchlimit 1 +set g_lms_roundlimit 4
