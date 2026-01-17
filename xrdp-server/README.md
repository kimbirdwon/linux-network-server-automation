## Before you start

Set the Rocky Linux 9 VM network adapter to **Bridged Adapter** so it gets an IP address on the same network as your Windows machine.

## Setup XRDP Server ![Rocky Linux](https://img.shields.io/badge/-RockyLinux9-10B981?logo=rockylinux&logoColor=white&style=flat-square)

1. Clone this repository and move to the XRDP folder:
   ```bash
   git clone https://github.com/kimbirdwon/linux-network-server-automation.git
   cd linux-network-server-automation/xrdp-server

2. Run the XRDP server setup script:
   ```bash
   sudo ./setup_xrdp_server.sh

3. After the script finishes, it prints a line like:
   > XRDP server is ready.  
   > Connect from Windows with: 192.168.X.X
   
   Use this IP address when connecting from Windows.

## Connect from Windows using XRDP ![Windows](https://img.shields.io/badge/-Windows-0078D6?logo=windows&logoColor=white&style=flat-square)

1. Open **Remote Desktop Connection**
   
   <img alt="image" src="https://github.com/user-attachments/assets/64f9fc4a-c5c2-4844-b673-b953a020c01d" width="400"/>
   
   - Computer: `192.168.X.X`

3. Login to XRDP Session

   <img alt="image" src="https://github.com/user-attachments/assets/31aa6155-84dc-4de0-9a43-086e5ac737bb" width="300"/>

   - Session: Xvnc
   - username: `<Rocky Linux username>`
   - password: `<password for that Rocky Linux user>`
