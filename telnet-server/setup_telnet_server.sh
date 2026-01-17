#!/bin/sh
# Telnet server setup script for Linux
# Created by Sewon Kim
# Run as sudo ./setup_telnet_server.sh

set -e

# Install telnet server
dnf -y install telnet-server

# Enable and start telnet service
systemctl start telnet.socket
systemctl enable telnet.socket

# Create telnet user if not exists
if ! id teluser >/dev/null 2>&1; then
  adduser teluser
fi

# Set password for teluser (demo only)
echo "teluser:1234" | chpasswd

# Open telnet in firewall
firewall-cmd --permanent --add-service=telnet
firewall-cmd --reload

# Show connection info
ip_addr=$(ip -4 -o addr show dev enp0s3 | awk '{print $4}' | cut -d/ -f1)
echo "Telnet server is ready."
echo "Connect from Windows with: telnet ${ip_addr}"
