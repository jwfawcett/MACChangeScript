#/bin/bash
clear

echo "What would you like your new mac to be? exp. 00:11:22:33:44:55"

read newmac
# creates the mac to be changed to

echo
#new line
echo "Cool let us change that mac"
echo

ifconfig eth0 down
macchanger --mac $newmac eth0
ifconfig eth0 up
#changes mac
echo

echo "Your new mac address is"
ifconfig | grep ether
#gathers new mac 

#New Project To add. I want to then automate:
#aireplay-ng -0 1 -a 00:11:22:33:44:55 -c 00:11:22:33:44:55 ath0
#after changing mac deauth someone else from the network
#by John Fawcett
