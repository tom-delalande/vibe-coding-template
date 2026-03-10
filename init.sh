#!/bin/bash

BASE_PROMPT=$1
LOGFILE="agent_logs/main.log"
echo $(date) " INIT START" >LOGFILE

codex --yolo \
  --model gpt-5.3-codex \
  exec "$(BASE_PROMPT) $(cat INIT_PROMPT.md)" \
  &>"$LOGFILE"

echo $(date) " INIT FINISH" >LOGFILE
