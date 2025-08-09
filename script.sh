#!/bin/bash

# Atualiza o sistema
echo "Atualizando pacotes..."
sudo apt update && sudo apt upgrade -y

# Instala C++ (GCC/G++)
echo "Instalando compilador C++ (g++)..."
sudo apt install -y build-essential

# Instala Python 3 e pip
echo "Instalando Python 3 e pip..."
sudo apt install -y python3 python3-pip python3-venv

# Instala Node.js e npm (última LTS)
echo "Instalando Node.js e npm..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# Instala CMake
echo "Instalando CMake..."
sudo apt install -y cmake

# Instala adb (Android Debug Bridge)
echo "Instalando ADB (Android Debug Bridge)..."
sudo apt install -y adb

# Instala Visual Studio Code
echo "Instalando Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/microsoft.gpg] \
https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm microsoft.gpg
sudo apt update
sudo apt install -y code

# Limpeza final
echo "Limpando pacotes desnecessários..."
sudo apt autoremove -y

echo "Instalação concluída!"
