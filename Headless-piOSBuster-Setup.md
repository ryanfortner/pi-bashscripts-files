# Headless piOS Buster setup

In the `boot` partition of a newly-flashed drive of RPi OS:

### Set up network (WiFi)

This *is not necessary* for Ethernet connections

Create file wpa_supplicant.conf
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=US

network={
 ssid="wifiusername"
 psk="wifipass"
}
```
