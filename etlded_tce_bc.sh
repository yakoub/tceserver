#!/bin/sh
# Simple script to start ET: Legacy dedicated server with Omni-Bots
#
./etlded +set fs_game tcetest +set com_hunkMegs 512 +set net_port 27970 +exec tce_bc_server.cfg +set sv_maxclients 20 +set g_lms_matchlimit 1 
