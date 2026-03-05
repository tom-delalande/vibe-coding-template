#!/bin/bash

LOGFILE="agent_logs/init.log"

codex --yolo \
  --model gpt-5.3-codex \
  exec "$(cat BASE_PROMPT.md) $(cat INIT_PROMPT.md)" \
  &>"$LOGFILE"
