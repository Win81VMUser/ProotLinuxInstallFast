echo Downloading scripts...
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/install-ubuntu20.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/install-ubuntu18.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/install-debian.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/remove-debian.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/remove-ubuntu18.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/remove-ubuntu20.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/reset-ubuntu20.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/reset-ubuntu18.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/reset-debian.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/start-ubuntu20.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/start-ubuntu18.sh
wget https://raw.githubusercontent.com/Win81VMUser/ProotLinuxInstallFast/main/Stuff/start-debian.sh
clear
echo Creating dirs and moving files into it & sleep 2
mkdir debian
mkdir ubuntu20
mkdir ubuntu18
mv *-ubuntu18* ubuntu18
mv *-ubuntu20* ubuntu20
mv *-debian* debian
clear
echo Now launch scripts by typing ex. debian/install-debian.sh and debian/start-debian.sh & sleep 3
echo Creating shortcuts for fast access ONLY START COMMANDS!
cp debian/start-debian.sh ~
cp ubuntu18/start-ubuntu18.sh ~
cp ubuntu20/start-ubuntu20.sh ~
echo Chmoding it for fast access - ./start-debian.sh
chmod +x start*
clear
echo Done! Have fun on Proot-Distro!
