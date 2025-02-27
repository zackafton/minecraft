#!/bin/bash

# Colour definitions
Black="\033[1;30m"       
Red="\033[1;31m"         
Green="\033[1;32m"       
Yellow="\033[1;33m"      
Blue="\033[1;34m"        
Purple="\033[1;35m"      
Cyan="\033[1;36m"        
White="\033[1;37m"       
Reset="\033[0m"

# Function to install required packages
install_dependencies() {
    echo -e "$Green Installing required packages...$Reset"
    apt-get update
    apt-get install -y python wget openjdk-17 openssh vsftpd
}

# Function to check if a package is installed
is_installed() {
    dpkg -l | grep -qw "$1"
}

# Check and install dependencies
for package in python wget openjdk-17 openssh vsftpd; do
    if ! is_installed "$package"; then
        install_dependencies
        break
    fi
done

clear
echo -e "$Purple drmatoi/minecraft  v2.0  is launching... \e[1;34m"
sleep 3.2
clear
echo -e "$Red

  ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣀⡿⠿⠿⠿⠿⠿⠿⠿⣀⣀⣀⣀⣀⣀⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠸⠿⣇⣀⣀⣀⣀⣀⣀⣸⠿⢿⣿⣿⣿⡇⠀⠀⠀⠀Host a Minecraft Server using Android - With Termux
⠀⠀⠀⠀⠀⠀⠀⠀⠻⠿⠿⠿⠿⠿⠿⣿⣿⣀⡸⠿⢿⣿⡇⠀⠀ github.com/drmatoi/minecraft Version 2.0.0
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣿⣿⣧⣤⡼⠿⢧⣤⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣿⣿⣿⠛⢻⣿⡇⠀⢸⣿⡇
⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣿⣿⣿⠛⠛⠀⢸⣿⡇⠀⢸⣿⡇
⠀⠀⠀⠀⠀⠀⢠⣤⣿⣿⣿⣿⠛⠛⠀⠀⠀⢸⣿⡇⠀⢸⣿⡇
⠀⠀⠀⠀⢰⣶⣾⣿⣿⣿⠛⠛⠀⠀⠀⠀⠀⠈⠛⢳⣶⡞⠛⠁
⠀⠀⢰⣶⣾⣿⣿⣿⡏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀
⢰⣶⡎⠉⢹⣿⡏⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⣿⣷⣶⡎⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  \033[0m"

echo " "
echo -e "$Red                               ⫸$Purple Made by M4T01 $Red ⫷\033[0m"
echo " "
echo -e " $Green     |---------------------------------------------------------------------|"
echo -e " $Green     ||----------------------------$Cyan [List] $Green---------------------------||"
echo -e " $Green     ||                                                                   "
echo -e " $Green     ||             $Purple==>$Yellow[1] SETUP Waterfall Server - 4GB RAM$Green                    "
echo -e " $Green     ||             $Purple==>️$Yellow[2] START Waterfall Server - 4GB RAM$Green                       "
echo -e " $Green     ||             $Purple==>$Yellow[3] STOP Server$Green                            "
echo -e " $Green     ||             $Purple==>$Yellow[4] Server IP address$Green               "
echo -e " $Green     ||             $Purple==>$Yellow[5] SERVER UP-Time$Green                                  "
echo -e " $Green     ||             $Purple==>$Yellow[6] Uninstall Launcher$Green                                  "
echo -e " $Green     ||             $Purple==>$Yellow[7] About$Green                                          "
echo -e " $Green     ||             $Purple==>$Yellow[8] Edit Configuration Files$Green                      "
echo -e " $Green     ||             $Purple==>$Yellow[9] Enable FTP/SFTP Access$Green                      "
echo -e " $Green     ||             $Purple==>$Yellow[10] Backup Server Files$Green                      "
echo -e " $Green     ||             $Purple==>$Yellow[11] Exit$Green                                           "
echo -e " $Green     ||             $Purple==>$Yellow[999] Reset/Update Launcher$Green                                           "
echo -e " $Green     ||                                                                   "                                                                                       
echo -e " $Green     ||---------------------------$Cyan [select option] $Green-----------------------||"
echo -e " $Green     |---------------------------------------------------------------------|"
echo " "
echo " "

read ch
if [ $ch -eq 1 ];then
    cd ~/
    mkdir drmatoi_minecrafthost && cd drmatoi_minecrafthost

    # Download Waterfall
    wget -O waterfall.jar https://papermc.io/ci/job/Waterfall/lastSuccessfulBuild/artifact/waterfall-*.jar

    # Create plugins directory
    mkdir plugins

    # Download EaglerXBungee plugin
    wget -O plugins/EaglerXBungee.jar https://hangar.papermc.io/Dhyey/EaglerXBungee/download/latest

    chmod +x waterfall.jar
    echo eula=true > eula.txt

    echo -e "$Green Waterfall server setup complete. You can now start the server.$Reset"
    exit

elif [ $ch -eq 2 ];then 
    # Start the server using waterfall.jar
    while true
    do
        java -Xms4G -Xmx4G -jar waterfall.jar
        sleep 1 
    done
    exit

elif [ $ch -eq 3 ];then
    # Stopping the server
    echo -e "$Red Stopping the server...$Reset"
    pkill -f waterfall.jar
    exit

elif [ $ch -eq 4 ];then
    apt-get install python3
    git clone https://github.com/drmatoi/M4T01Picker.git
    cd M4T01Picker
    python3 ipicker.py
    exit

elif [ $ch -eq 5 ];then
    echo -e "\e[1;34m The server is online as long as: The device on which it is running is connected to the Internet,
    there is enough memory and RAM, Termux is open and the script is not terminated.
    Yes the Server can crash. Should it start again automatically?
    POSSIBLE! Create before launching a new file with nano alwaysonline.sh, put the script from this GitHub, and save it with [STRG + X] 
    Now launch the Server with ./alwaysonline.sh. This will check the up-time of the server and relaunch it when it's offline."
    cd $HOME
    exit

elif [ $ch -eq 999 ];then
    rm -rf minecraft
    git clone https://github.com/drmatoi/minecraft
    cd minecraft
    chmod +x launcher.sh
    ./launcher.sh
    exit

elif [ $ch -eq 6 ];then 
    cd $HOME
    rm -rf drmatoi_minecrafthost
    exit

elif [ $ch -eq 7 ];then
    echo -e "$Cyan How to Host a Minecraft Server on Android
    A script for Termux that makes it possible to host a Minecraft server via your Android phone. This script requires Termux (Updated F-Droid Version) and a bit of time :)
    Install script and UP-Time script are made by M4T01.
    YOU CANNOT USE THIS ON ANDROID 11 - SORRY! \e[1;36m"
    echo -e "$Green To add plugins, download the desired plugin .jar file and place it in the 'plugins' directory.$Reset"
    cd $HOME
    exit

elif [ $ch -eq 8 ]; then
    # Open nano editor for configuration files
    nano $HOME/drmatoi_minecrafthost/config.yml  # Replace with your actual config file name
    exit

elif [ $ch -eq 9 ]; then
    # Enable FTP/SFTP
    echo -e "$Green Enabling FTP/SFTP access...$Reset"
    
    # Configure vsftpd
    echo "anonymous_enable=NO" >> /etc/vsftpd.conf
    echo "local_enable=YES" >> /etc/vsftpd.conf
    echo "write_enable=YES" >> /etc/vsftpd.conf
    echo "chroot_local_user=YES" >> /etc/vsftpd.conf

    # Start vsftpd service
    service vsftpd start

    echo -e "$Green FTP/SFTP is now enabled and running. You can connect using your FTP client.$Reset"
    echo -e "$Cyan Use the following details to connect:"
    echo -e "$Cyan Host: $(hostname -I | awk '{print $1}')"
    echo -e "$Cyan Username: Your Termux username"
    echo -e "$Cyan Password: Your Termux password"
    exit

elif [ $ch -eq 10 ]; then
    # Backup server files
    echo -e "$Green Backing up server files...$Reset"
    backup_dir="$HOME/minecraft_backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    
    cp -r $HOME/drmatoi_minecrafthost/* "$backup_dir/"
    
    echo -e "$Green Backup completed. Files are saved in: $backup_dir$Reset"
    exit

elif [ $ch -eq 11 ]; then
    exit

else
    echo -e "\e[4;32m Invalid Input !!! \e[0m"
    pause
fi
