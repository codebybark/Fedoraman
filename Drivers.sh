
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf install libva-nvidia-driver

sudo dnf update @sound-and-video

lspci | grep -Ei 'VGA|3D'
sudo dnf update --refresh

#install NVIDIA drivers with RPM Fusion
sudo dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf makecache

sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda

##################

Reboot