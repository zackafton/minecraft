# Android Minecraft Server Host - Termux 
A script for Termux that makes it possible to host a Minecraft server via your Android phone. -  
## FIRST  INSTALLATION [Termux]

* `git install openjdk-17`

* `cd ~/`
* ` mkdir drmatoi_mincrafthost && drmatoi_mincrafthost `

* ` wget -O server.jar https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar `
* ` chmod +x server.jar `

 * ` echo eula=true > eula.txt` 

* ` java -Xmx1024M -Xms1024M -jar server.jar nogui `


* ## Normal Start [after first installation]

* `pkg install git`
* `git clone https://github.com/drmatoi/minecraft`
* `bash start.sh`
