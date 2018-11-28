#/bin/bash
clear

echo "What would you like your new mac to be? exp. 00:11:22:33:44:55"

read $newmac
# creates the mac to be changed to

echo
#new line
echo "Cool let us change that mac"
echo

ifconfig eth0 down
macchanger --mac $newmac wlan0
ifconfig eth0 up
#changes mac

echo"Your new mac address is"
ifconfig | grep ether
#gathers new mac 
#by John Fawcett
