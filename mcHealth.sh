
#!/bin/bash

############################
# Author: TomWicK
# Date: 12/6/24
# 
# This Script is for checking node health
#
# Version: v1.0
############################

set -x #debug mod
set -e #exits the script when there is an error
set -o pipefail # 

df -h

free -g

nproc

ps -ef | grep amazon | awk "{print $2}"
