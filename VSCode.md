# Visual Studio Code

apt repo install instructions:
```bash
sudo apt install wget gpg gdb -y

sudo sh -c "cat > /etc/apt/sources.list.d/vscode.list << _EOF_
deb [arch=$arch] http://packages.microsoft.com/repos/code stable main
_EOF_"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/

rm -rf packages.microsoft.gpg

sudo apt update

sudo apt install code -y
# or
sudo apt install code-insiders -y
# or install both:
sudo apt install code code-insiders -y
```
