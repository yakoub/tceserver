# tceserver
start server using linux `screen` :
```bash
screen -S tce # start new session
etlded_tce.sh
Ctrl+a d      # detach session from console
```
resuming server :
```bash
screen -r tce # reattach session to current console
```
for BC and CTF, just use different names in screen -S :
```
screen -S tce_bc # start BC session
etlded_tce_bc.sh
Ctrl+a d
```
resuming BC
```
screen -r tce_bc
```
