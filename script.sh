#!/bin/sh
set +x

sar -u >> data.txt

printf "\n"
echo "Linux Kernel & Distribution"
sed -n '1p' data.txt


printf "\n"
echo "CPU Statistics"
sed -n '3p;$p' data.txt



sar -r >> mem.txt

printf "\n"
echo "Memory Statistics"
sed -n '3p;$p' mem.txt


ssh user2@server 'cd /home/user2; ./script.sh'