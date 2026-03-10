#!/bin/bash

LOGFILE="agent_logs/main.log"
echo $(date) " LOOP START" >LOGFILE

while true; do
  if ! compgen -G "tasks/*pending.md" >/dev/null; then
    echo "No pending files found. Exiting."
    echo $(date) " LOOP FINISH" >LOGFILE
    exit 0
  fi

  COMMIT=$(git rev-parse --short=6 HEAD)
  LOGFILE="agent_logs/agent_${COMMIT}.log"

  codex --yolo \
    --model gpt-5.3-codex \
    exec "$(cat AGENT_PROMPT.md)" \
    &>"$LOGFILE"
done
