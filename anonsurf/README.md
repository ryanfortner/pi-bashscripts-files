## Installation
Execute these commands into your command prompt or terminal.
```bash
wget -qO- https://raw.githubusercontent.com/chunky-milk/anonsurf-arm/main/installer.sh | sudo bash
```

## Usage
### Pandora
Pandora automatically overwrites the RAM when the system is shutting down. Pandora can also be ran manually:
```bash
pandora bomb
```

NOTE: This will clear the entire system cache, including active SSH tunnels or sessions.

### anonsurf
Anonsurf will anonymize the entire system under the tor network using IPTables. It will also allow you to start and stop i2p as well.

NOTE: DO NOT run this as ```service anonsurf $COMMAND```. Run this as ```anonsurf $COMMAND```

```bash
Usage:
 anonsurf {start|stop|restart|change|status}

 start - Start system-wide anonymous
          tunneling under TOR proxy through iptables
 stop - Reset original iptables settings
          and return to clear navigation
 restart - Combines "stop" and "start" options
 change - Changes identity restarting TOR 
 status - Check if AnonSurf is working properly
----[ I2P related features ]----
 starti2p - Start i2p services
 stopi2p - Stop i2p services
```
