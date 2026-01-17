#!/bin/sh
# XRDP server setup script for Rocky Linux 9
# Created by: Sewon Kim
# Run as: sudo ./setup_xrdp_server.sh

set -e

echo "Setting up XRDP server..."

# Install EPEL repository
dnf -y install epel-release

# Install xrdp package
dnf -y install xrdp

# Enable and start xrdp service
 systemctl start xrdp

# Open XRDP port (3389/tcp) in firewall
firewall-cmd --permanent --zone=public --add-port=3389/tcp
firewall-cmd --reload

# Show connection info
ip_addr=$(ip -4 -o addr show dev enp0s3 | awk '{print $4}' | cut -d/ -f1)
echo "XRDP server is ready."
echo "Connect from Windows with: ${ip_addr}"
