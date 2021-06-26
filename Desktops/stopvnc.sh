echo The file is located on your /root/ or /home/<username>/ directory OR/AND in /usr/lib :) & sleep 3
clear
echo Please save your work before running. Press ctrl+c to cancel and save any work or wait 3 seconds to kill server! & sleep 2
echo Killing in 3 & sleep 1
echo Killing in 2 & sleep 1
echo Killing in 1 & sleep 1
vncserver -kill :*
clear
echo Done! You can launch again VNC by typing startvnc.sh!
