#!/bin/bash

MONITOR_PATH=$PWD
WATCHER_FILENAME="run_modules.sh"
FULL_PATH="${MONITOR_PATH}/${WATCHER_FILENAME}"


CRONJOB="*/1 */1 */1 */1 */1 root $FULL_PATH"

crontab -l | { cat; echo $CRONJOB; } | crontab -

