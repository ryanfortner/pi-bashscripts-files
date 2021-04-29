# NordVPN Linux client

### Installation
```
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo apt --fix-broken -y install ./nordvpn-release_1.0.0_all.deb
rm nordvpn-release_1.0.0_all.deb
sudo apt update && sudo apt install nordvpn -y

# Login to nordvpn
nordvpn login
```
