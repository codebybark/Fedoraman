
#install brave browser
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

#install discord
sudo dnf install https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13-0.1.fc21.x86_64.rpm
