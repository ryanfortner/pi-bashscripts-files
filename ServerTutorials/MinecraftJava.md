Spigot version

only for minecraft versions 1.16.5 and lower

```
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install default-jdk git -y
mkdir /home/pi/minecraft
cd /home/pi/minecraft
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -Xmx1024M -jar BuildTools.jar --rev 1.16.5
java -Xms512M -Xmx1008M -jar /home/pi/minecraft/spigot-1.16.5.jar nogui
nano eula.txt
op username
# nsc plugin (optional)
cd /home/pi/minecraft/plugins
wget -O NoSpawnChunks.jar https://files.pimylifeup.com/minecraft/NoSpawnChunks.jar
# Start server on boot
sudo nano /lib/systemd/system/minecraftserver.service
## paste the following
[Unit]
Description=Minecraft Spigot Server

[Service]
User=pi
Group=pi
Restart=on-abort
WorkingDirectory=/home/pi/minecraft/
ExecStart=/usr/bin/java -Xms512M -Xmx1008M -jar /home/pi/minecraft/spigot-1.16.5.jar nogui

[Install]
WantedBy=multi-user.target
## ctrl+x and y then enter
sudo systemctl enable minecraftserver.service
sudo systemctl start minecraftserver.service
# sudo systemctl status minecraftserver.service
# sudo systemctl stop minecraftserver.service
```
