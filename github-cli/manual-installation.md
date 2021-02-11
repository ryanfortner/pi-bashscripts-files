# GitHub CLI
`gh` is GitHub on the command line. It brings pull requests, issues, and other GitHub concepts to the terminal next to where you are already working with git and your code.

### Installation (32bit)
```
wget -O ~/gh-cli_armhf.deb https://github.com/cli/cli/releases/download/v1.5.0/gh_1.5.0_linux_armv6.deb
sudo apt -f -y install ~/gh-cli_armhf.deb
rm ~/gh-cli_armhf.deb
```
### Installation 64bit
```
wget -O ~/gh-cli_arm64.deb https://github.com/cli/cli/releases/download/v1.5.0/gh_1.5.0_linux_arm64.deb
sudo apt -f -y install ~/gh-cli_arm64.deb
rm ~/gh-cli_arm64.deb
```

armv6 and arm64 binaries available [here](https://github.com/cli/cli/releases/latest)

### Uninstallation
```
sudo apt purge -y gh
```

## [back to gh readme](https://github.com/Itai-Nelken/pi-bashscripts-files/tree/main/github-cli#github-cli)
