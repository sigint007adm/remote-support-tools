#!/bin/bash

cat << "EOF"

   _____ _____  __________ _   _ ________  __   __   _______        
  / ____|_   _|/ ___|_   _| \ | |__   __| /  \_/  \_/___   /        
 | (___   | | / / __  | | |  \| |  | |   | /\ | /\ |   /  /         
  \___ \  | || | |_ | | | | . ` |  | |   | || | || |  /  /          
  ____) |_| |_\ \_| |_| |_| |\  |  | |   | \/ | \/ | /  /           
 |_____/|_____|\____|_____|_| \_|  |_|    \__/ \__/ /_ /        

EOF

echo "🔍 Diagnóstico de red iniciado..."
echo "IP local: $(hostname -I)"
echo "Gateway: $(ip route | grep default | awk '{print $3}')"
echo "DNS: $(cat /etc/resolv.conf | grep nameserver)"
ping -c 4 8.8.8.8
traceroute google.com
echo "✅ Diagnóstico completado."
