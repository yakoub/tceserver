#!/bin/sh
# Simple script to start tcetest obj
#
./etlded +set fs_game tcetest +set com_hunkMegs 512 +exec tce_server.cfg +set sv_maxclients 20 +set g_lms_matchlimit 1 +set g_lms_roundlimit 4
