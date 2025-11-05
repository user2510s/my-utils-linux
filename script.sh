#!/bin/bash

echo "Atualizando o sistema..."
sudo dnf upgrade --refresh -y

# Instala C++ (GCC/G++)
echo "Instalando compilador C++ (GCC/G++)..."
sudo dnf install -y gcc gcc-c++

# Instala Python 3, pip e venv
echo "Instalando Python 3, pip e venv..."
sudo dnf install -y python3 python3-pip python3-virtualenv

# Instala Node.js LTS (via NodeSource)
echo "Instalando Node.js LTS..."
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo dnf install -y nodejs

# Instala CMake
echo "Instalando CMake..."
sudo dnf install -y cmake

# Instala ADB (Android Debug Bridge)
echo "Instalando ADB..."
sudo dnf install -y android-tools

# Instala Visual Studio Code
echo "Instalando Visual Studio Code..."
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code

echo "Removendo pacotes desnecessários..."
sudo dnf autoremove -y

echo "Instalação concluída!"
