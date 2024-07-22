
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf install libva-nvidia-driver

sudo dnf update @sound-and-video

Reboot