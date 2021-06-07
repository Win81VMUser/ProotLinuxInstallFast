echo "Welcome to GnomeFixAll.sh! Installation will begin soon..."
echo :Installation will start in 5 seconds, press ctrl+c to cancel or wait to start." & sleep 2
echo Starting in 4... & sleep 1
echo Starting in 3... & sleep 1
echo Starting in 2... & sleep 1
echo Starting in 1... & sleep 1
echo "Dont touch anything during installation..."
sudo apt install light-themes gnome-session-flashback gnome-settings-daemon gnome-terminal metacity nautilus gnome-tweak-tool tigervnc-standalone-server dbus* dbus-* -y
clear
echo "Fixing files and gnome..."
sudo service dbus start
sudo service dbus status & sleep 1
echo "Seems to be fine... Lets start desktop!"
echo "To kill vnc type vncserver -kill :*"
sudo service dbus start && tigervncserver -xstartup /usr/lib/gnome-flashback/gnome-flashback-metacity
echo Start command is
echo "service dbus start && tigervncserver -xstartup /usr/lib/gnome-flashback/gnome-flashback-metacity"
