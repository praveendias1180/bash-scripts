#!/bin/bash

# This bash script is used to backup praveen's script directory to /tmp/.

user=$(whoami)
input=/home/$user/bash-scripts
output=/tmp/${user}_home_scripts_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output