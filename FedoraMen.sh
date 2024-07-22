# update system
sudo dnf update -y
sudo dnf group update core


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

#install media codecs
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin


# install programs
# jetbrains toolbox
cd /home/bark
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-<version>.tar.gz -O jetbrains-toolbox.tar.gz
tar -xzvf jetbrains-toolbox.tar.gz -C /home/bark
cd jetbrains-toolbox-<version>
./jetbrains-toolbox

# yakuake
sudo dnf install yakuake -y

# terminator
sudo dnf install terminator -y

