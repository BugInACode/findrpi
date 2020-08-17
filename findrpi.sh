# bash script that looks for a raspberry pi connect to the same network
# and attempts to ssh into it

foo=$(ip add | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/24')
#echo $foo
foo=$(sudo nmap -sn $foo | grep 'raspberrypi.gateway' | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')
#echo $foo
ssh pi@$foo
