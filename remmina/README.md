## Remmina
https://remmina.org/how-to-install-remmina/#raspberry-pi
```
sudo apt-get install dirmngr
sudo apt-key adv --fetch-keys https://www.remmina.org/raspbian/remmina_raspbian.asc
sudo bash -c 'echo "deb https://www.remmina.org/raspbian/ buster main" > /etc/apt/sources.list.d/remmina_raspbian.list'
sudo apt update
sudo apt install remmina
```
