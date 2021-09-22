# Raspberry Pi Benchmarks
This is my collection of Raspberry Pi benchmarks. They have all been tested on standard Raspberry Pi OS (Raspbian) and work fine.
If you have any problems, **please** open a new [issue](https://github.com/ryanfortner/rpi-benchmarks/issues).

### Roy Longbottom's Pi Benchmarks
Information: http://www.roylongbottom.org.uk/Raspberry%20Pi%20Benchmarks.htm
```
cd ~/Downloads
wget -O Raspberry_Pi_Benchmarks.zip https://github.com/ryanfortner/rpi-benchmarks/raw/main/Linpack-Benchmarks.zip
unzip Raspberry_Pi_Benchmarks.zip && rm Raspberry_Pi_Benchmarks.zip
```

### glmark2
Compiled by [Novaspirit Tech](https://www.youtube.com/channel/UCrjKdwxaQMSV_NDywgKXVmw)

You will need to get the mesa/vulkan drivers, instructions [here](https://github.com/ryanfortner/pi-bashscripts-files/blob/main/other/mesa-vulkan-drivers-rpi4.md)
```
cd ~/
wget https://cdn.discordapp.com/attachments/720461552704159825/793351921091739688/glmark2.deb
sudo apt install --fix-missing -y ~/glmark2.deb && rm glmark2.deb
glmark2-es2
```

### vkmark
Compiled by [Novaspirit Tech](https://www.youtube.com/channel/UCrjKdwxaQMSV_NDywgKXVmw)

You will need to get the mesa/vulkan drivers, instructions [here](https://github.com/ryanfortner/pi-bashscripts-files/blob/main/other/mesa-vulkan-drivers-rpi4.md)
```
cd ~/
wget https://cdn.discordapp.com/attachments/720461552704159825/793572064287260672/vkmark.deb
sudo apt install --fix-missing -y ~/vkmark.deb && rm vkmark.deb
vkmark
```

### Phoronix Test Suite
Script by [Jeff Geerling on YouTube](https://www.youtube.com/c/JeffGeerling). 

GitHub: https://github.com/geerlingguy
```
wget -O phoronix.sh https://raw.githubusercontent.com/ryanfortner/rpi-benchmarks/main/pi-benchmark-general-phoronix.sh
sudo chmod +x phoronix.sh
sudo ./phoronix.sh
```

### Stressberry
This benchmarking tool will stress the CPU of your Pi and create a temperature graph.
[Instructions](https://github.com/ryanfortner/rpi-benchmarks/blob/main/stressberry.md)

### Disk speed benchmark
This script will measure the write/read speed of your system drive
```
wget -qO- https://raw.githubusercontent.com/ryanfortner/rpi-benchmarks/main/sdcard-bmark.sh | bash
```

### nbench
BYTEmark* Native Mode Benchmark ver. 2 (10/95)
```
wget https://github.com/ryanfortner/rpi-benchmarks/raw/main/nbench
chmod +x nbench
sudo mv nbench /usr/bin/nbench
nbench
```

### tinymembench
Information: https://github.com/ssvb/tinymembench
A simple memory benchmark program, which tries to measure the peak
bandwidth of sequential memory accesses and the latency of random memory
accesses. Bandwidth is measured by running different assembly code for
the aligned memory blocks and attempting different prefetch strategies.
```
wget https://github.com/ryanfortner/rpi-benchmarks/raw/main/tinymembench
chmod +x tinymembench
sudo mv tinymembench /usr/bin/tinymembench
tinymembench
```

### webgl samples
This application shows a couple webGL samples. I typically use the aquarium one but whichever one you use is your choice.
```
wget -qO- https://github.com/ryanfortner/rpi-benchmarks/raw/main/webgl.sh | bash
```
