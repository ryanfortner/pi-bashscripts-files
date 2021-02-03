# VSCodium
https://vscodium.com/

Microsoft’s vscode source code is open source (MIT-licensed), but the product available for download (Visual Studio Code) is licensed under this not-FLOSS license and contains telemetry/tracking.

The VSCodium project exists so that you don’t have to download+build from source. This project includes special build scripts that clone Microsoft’s vscode repo, run the build commands, and upload the resulting binaries for you to GitHub releases. These binaries are licensed under the MIT license. Telemetry is disabled.

If you want to build from source yourself, head over to Microsoft’s vscode repo and follow their instructions. VSCodium exists to make it easier to get the latest version of MIT-licensed VSCode.

### Installation
```
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update && sudo apt install codium -y
```

### Uninstall
```
sudo apt purge codium
sudo rm /etc/apt/trusted.gpg.d/vscodium.gpg
sudo rm /etc/apt/sources.list.d/vscodium.list
```
