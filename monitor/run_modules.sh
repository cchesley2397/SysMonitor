#!/bin/bash

WATCH_FILES=true
FILE_WATCHER_PATH="/watch_modules/file_watcher/watch_files.sh"

WATCH_IPTABLES=true
IPTABLES_WATCHER_PATH="/watch_modules/iptables_watcher/watch_iptables.sh"

if [ $WATCH_FILES = true ]; then
	source $PWD$FILE_WATCHER_PATH > output.txt
fi

if [ $WATCH_IPTABLES = true ]; then
	source $PWD$IPTABLES_WATCHER_PATH >> output.txt
fi











