#!/bin/bash

#This script installs yay in your system

echo "Updating system..."
sudo pacman -Syy

echo "Checking for Git and Base Devel..."
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

yay --version &>/dev/null
if [ $? -eq 0 ]; then
	echo "No need! Yay is already installed"
else
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
fi