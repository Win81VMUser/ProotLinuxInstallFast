echo This will remove ALL OF DISTROS AND FILES!!!
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
echo Done!
