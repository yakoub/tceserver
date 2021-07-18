#!/usr/bin/bash

declare -A session_sh=(
  [tce_obj]=etlded_tce.sh
  [tce_bc]=etlded_tce_bc.sh
  [tce_ctf]=etlded_tce_ctf.sh
)

function startup_tce {
  for session in ${!session_sh[@]}; do
    screen -m -d -S $session ./${session_sh[$session]}
  done
  echo starting...
  sleep 3
  screen -ls
}

function shutdown_tce {
  for session in ${!session_sh[@]}; do
    screen -S $session  -X stuff "quit\n"
  done
  echo quitting...
  sleep 3
  screen -ls
}


function restart_tce {
  local session=$1 found=0
  
  if ! in_detached $session; then
    echo $session not found;
    return;
  fi

  screen -S $session -X stuff "quit\n"
  echo "stopping ..."
  sleep 3
  echo "restarting."
  screen -m -d -S $session ./${session_sh[$session]}
}

function in_detached {
  local session=$1
  declare -a sessions=(`screen -ls | grep Detached | tr "[:blank:]" " " | cut -d" " -f2`)
  for s_it in ${sessions[@]}; do
    if [[ ${s_it#*.} = $session ]]; then
      return 0;
    fi
  done
  return 1
}

# main
if [[ -n $1 ]]; then
  if [[ $1 = "stop" ]]; then
    shutdown_tce
  else
    restart_tce $1
  fi
else
  startup_tce
fi
