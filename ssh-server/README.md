> [!NOTE]  
> OpenSSH is pre-installed & running by default on Rocky Linux 9 (no setup script needed).  
> This guide summarizes Windows client connection methods.

## Before you start 

Set the Rocky Linux 9 VM network adapter to **Bridged Adapter** so it gets an IP address on the same network as your Windows machine.

## Check SSH server IP ![Rocky Linux](https://img.shields.io/badge/-RockyLinux9-10B981?logo=rockylinux&logoColor=white&style=flat-square)

**OpenSSH is installed and enabled** by default on Rocky Linux 9, so no additional setup is required in this guide.

- To check the server IP address on Rocky Linux, run:

   ```bash
   ip addr
   ```
  Use this IP address when connecting from Windows.

## Connect from Windows using OpenSSH ![Windows](https://img.shields.io/badge/-Windows-0078D6?logo=windows&logoColor=white&style=flat-square)

1. Install **PuTTY**

   Download and install PuTTY from the official website: [PuTTY Download](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
   
   <img alt="스크린샷 2026-01-18 013219" src="https://github.com/user-attachments/assets/3f446b24-3962-40e3-8f21-3fa21c1f37f0" width="400"/>

2. Configure PuTTY session
   - Host Name: `192.168.X.X` (IP address of the Rocky Linux server)
   - Port: 22
   - Connection type: SSH

3. Log in when prompted:
   - login as: `<Rocky Linux username>`
   - password: `<password for that Rocky Linux user>`
