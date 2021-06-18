echo This will remove ALL OF DISTROS AND FILES!!!
echo Please make sure YOU WANT DO IT!!! DELETING IN 5 SECONDS!!! & sleep 2
echo DELETING IN 4 & sleep 1
echo DELETING IN 3 & sleep 1
echo DELETING IN 2 & sleep 1
echo DELETING IN 1 & sleep 1
echo DELETING STARTED!!! LAST 2 SECONDS TO CLOSE THIS OR DELETE FILES!!! & sleep 3
echo Removing Distros...
bash debian/remove-debian.sh
bash ubuntu18/remove-ubuntu18.sh
bash ubuntu20/remove-ubuntu20.sh
clear
echo Removing Data Files...
proot-distro clear-cache
clear
echo Removing Proot-Distro...
pkg remove proot-distro -y
apt autoremove -y
clear
echo Removing programs files and scripts...
rm -rf *
rm *
echo Done! To setup again please run this: wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/setup.sh
