#!/bin/bash

while true; do
  if ! compgen -G "tasks/*pending.md" >/dev/null; then
    echo "No pending files found. Exiting."
    exit 1
  fi

  COMMIT=$(git rev-parse --short=6 HEAD)
  LOGFILE="agent_logs/agent_${COMMIT}.log"

  codex --yolo \
    --model gpt-5.3-codex \
    exec "$(cat BASE_PROMPT.md) $(cat AGENT_PROMPT.md)" \
    &>"$LOGFILE"
done
