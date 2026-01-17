## Before you start

Set the Rocky Linux 9 VM network adapter to **Bridged Adapter** so it gets an IP address on the same network as your Windows machine.

## Setup Telnet Server ![Rocky Linux](https://img.shields.io/badge/-RockyLinux9-10B981?logo=rockylinux&logoColor=white&style=flat-square)

1. Clone this repository and move to the telnet folder:
   ```bash
   git clone https://github.com/kimbirdwon/linux-network-server-automation.git
   cd linux-network-server-automation/telnet-server

2. Run the Telnet server setup script:
   ```bash
   sudo ./setup_telnet_server.sh

3. After the script finishes, it prints a line like:
   > Telnet server is ready.  
   > Connect from Windows with: telnet 192.168.X.X
   
   Use this IP address when connecting from Windows.

## Connect from Windows using Telnet ![Windows](https://img.shields.io/badge/-Windows-0078D6?logo=windows&logoColor=white&style=flat-square)

1. Run **Command Prompt as Administrator**.

2. Enable the Telnet client:
   ```cmd
   dism /online /Enable-Feature /FeatureName:TelnetClient

3. Connect to the Linux Telnet server:
   ```cmd
   telnet 192.168.X.X

4. Log in with:
   - rocky9 login: `teluser`
   - Password: `1234`
