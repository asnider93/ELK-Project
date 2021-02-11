#! /bin/bash


output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)

if [ ! -d $HOME/research ]; then
	mkdir $HOME/research
fi


if [ -f $output ]; then
	rm $output
fi


echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
echo $MATCHTYPE
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr |grep inet |tail -2 | head -1) \n"
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "/nCPU Info:"
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "/nWho is logged in: \n $(who) \n"
mkdir -p ~/research
sudo find / -type f -perm 777
