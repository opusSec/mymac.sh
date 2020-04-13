#! /bin/bash 
x=0 
while [ $x = 0 ] 
do


cat head.txt  
echo "***********************************************************" 
echo "by:Opus_| github.com/opus/CyberSec"
echo "-----------------------------------"
echo "Welcome to the auto-macchanger tool" 
echo "1.RANDOM MAC" 
echo "2.SET MAC"  
echo "3.SHOW MY MAC ADDRESS"
echo "4.EXIT" 
echo "-------------------"
echo "Choose one option: " 
read userInput  

case "$userInput" in
       1) 
       x=1
       ifconfig wlan0 down 
       macchanger -r wlan0 
       ifconfig wlan0 up 
       sleep 15 
       ./mymac.sh
       
       ;;
       2)  
       echo "Format: 6B:9J:9G..." 
       x=1 
       sleep 3
       echo "..."
       ifconfig wlan0 down  
       echo "Write your MAC address: " 
       read answer
       macchanger -b $answer wlan0 
       ifconfig wlan0 up 
       echo "........." 
       sleep 2 
       echo "..................." 
       sleep 15  
       echo "........................DONE"
       ./mymac.sh
       
       ;;
       3)  
       x=1 
       iwconfig
       sleep 30 
       ./mymac.sh
       ;;   
       
       4) 
       echo "Goodbye!" 
       sleep 3 
       echo ".......................EXIT"  
       sleep 2 
       clear
       exit
   esac 
done

        


