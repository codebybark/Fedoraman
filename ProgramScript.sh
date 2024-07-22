cd


# update system
sudo dnf update -y
sudo dnf group update core

################################################################################

# Repos: free
sudo dnf install \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

#non-free
sudo dnf install \
https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

#flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#setup RPM fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update @core

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf config-manager --enable fedora-cisco-openh264

sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install \
https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc



# jetbrains toolbox
cd /home/bark
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-<version>.tar.gz -O jetbrains-toolbox.tar.gz
tar -xzvf jetbrains-toolbox.tar.gz -C /home/bark
cd jetbrains-toolbox-<version>
./jetbrains-toolbox
cd

#github desktop
sudo dnf install github-desktop

#modrinth
flatpak install modrinth-app

#install brave browser
sudo dnf install brave-browser

#install discord
sudo dnf install https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13-0.1.fc21.x86_64.rpm

# yakuake
sudo dnf install yakuake -y

# terminator
sudo dnf install terminator -y

#kget
sudo dnf install kget


