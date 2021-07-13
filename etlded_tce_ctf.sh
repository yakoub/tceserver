#!/bin/sh
# Simple script to start ET: Legacy dedicated server with Omni-Bots
#
./etlded +set fs_game tcetest +set com_hunkMegs 256 +set net_port 27920 +exec tce_ctf_server.cfg +set sv_maxclients 20 +set g_lms_matchlimit 1 
