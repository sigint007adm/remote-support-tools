#!/bin/bash

cat << "EOF"

   _____ _____  __________ _   _ ________  __   __   _______        
  / ____|_   _|/ ___|_   _| \ | |__   __| /  \_/  \_/___   /        
 | (___   | | / / __  | | |  \| |  | |   | /\ | /\ |   /  /         
  \___ \  | || | |_ | | | | . ` |  | |   | || | || |  /  /          
  ____) |_| |_\ \_| |_| |_| |\  |  | |   | \/ | \/ | /  /           
 |_____/|_____|\____|_____|_| \_|  |_|    \__/ \__/ /_ /        

EOF

echo "🔐 Fortaleciendo configuración SSH..."
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd
echo "✅ SSH endurecido correctamente."
