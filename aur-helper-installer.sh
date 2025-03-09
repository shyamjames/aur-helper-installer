echo "This script installs An Aur Helper of your choice in your system"
echo "Updating system..."
sudo pacman -Syy

echo "Checking if Git and Base Devel is already installed..."
git --version &>/dev/null
if [ $? -eq 0 ]; then
	echo "Git is installed..."
else
	echo "Git is not installed..."
	echo "Installing git..."
	sudo pacman -S git
fi

pacman -Q base-devel &>/dev/null
if [ $? -eq 0 ]; then
	echo "Base devel is installed..."
else
	echo "Base devel not installed..."
	echo "Installing Base devel..."
	sudo pacman -S base-devel
fi


echo "1. Yay"
echo "2. Paru"
read -p "Enter your choice: " num

if [ "$num" -eq 1 ]; then
    yay --version &>/dev/null
    if [ $? -eq 0 ]; then
        echo "No need! Yay is already installed"
    else
        echo "Installing Yay..."
        git clone https://aur.archlinux.org/yay.git
        cd yay
        makepkg -si
    fi
else
    paru --version &>/dev/null
    if [ $? -eq 0 ]; then
        echo "No need! Paru is already installed"
    else
        echo "Installing Paru..."
        git clone https://aur.archlinux.org/paru.git
        cd paru
        makepkg -si
    fi
fi