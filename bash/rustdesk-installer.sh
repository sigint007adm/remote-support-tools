#!/bin/bash
# Instalador de RustDesk para Debian/Ubuntu

echo "Instalando RustDesk..."
sudo apt update
sudo apt install -y curl
curl -s https://raw.githubusercontent.com/rustdesk/rustdesk-server/master/install.sh | bash
echo "RustDesk instalado correctamente."
