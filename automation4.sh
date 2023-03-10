#!/bin/bash
cd /home/claymore/ShellScripting_Automation

find . -type f -mtime -2 -exec cp '{}' /home/claymore/ShellScripting_Automation/Log_Backup \;

cd /home/claymore/ShellScripting_Automation/Log_Backup

find . /home/claymore/ShellScripting_Automation/Log_Backup -type f -name '*log*' > include-file

tar -cvf $(hostname)_$(date +%Y-%m-%d).tar.gz -T include-file

find . -type f -name '*log*' -exec rm -rf {} \;
find . -type f -mtime +3 -name '*.tar.gz' -exec rm '{}' \;
exit


