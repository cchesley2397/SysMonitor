# SysMonitor
Script to monitor changes to various settings and files.

## Installation
Unzip the "monitor" folder on the target system.

Run `add_cronjob.sh` as root. 
This will add a cronjob which runs the set of modules every minute.


## Configuration

Modules will output changes to watched files in their respective directories.

`run_modules.sh` contains a path to each module and a boolean indicating whether it is enabled.

To add a new module, add a variable indicating its path under "watch_modules".
Then add a conditional statement which runs the script.


## File Watcher Configuration
The file_watcher module details which files to check in `watchlist.txt`.
Add new files by writing the complete path to the file on a new line.
