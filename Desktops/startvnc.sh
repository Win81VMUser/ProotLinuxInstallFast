echo The file is located on your /root/ or /home/<username>/ directory OR/AND in /usr/lib :)
echo Change VNC Options if you know what YOU ARE DOING!!! You can change -geometry 1024x768 to any of your screen resolution.
echo Kill VNC using stopvnc.sh!
echo Starting your default DE and VNC Server, CAN CONNECT FROM EXTERNAL DEVICES(PC,other phones etc)!!!
tigervncserver -localhost no -geometry 1024x768
