## How to Install CentOS Stream 9 in VMware Workstation
## 1. Download CentOS Stream 9
Download the CentOS Stream 9 ISO from the official</br>
website:
https://www.centos.org/download/?utm_source=chatgpt.com
## 2. Create Required Folders
Create the following folder structure:
```
E:\Workstation\OS
E:\Workstation\VM\master-node
```
Store the CentOS ISO file in:
```E:\Workstation\OS```

Store the virtual machine files in:
```E:\Workstation\VM\master-node```

## 3. Install VMware Workstation
Install VMware Workstation on your system.

## 4. Create a New Virtual Machine
1. Open VMware Workstation.
2. Click Create a New Virtual Machine.
3. Select Typical (Recommended) and click Next.
4. Select I will install the operating system later and click Next.
5. Select:
- Guest Operating System: Linux
- Version: CentOS 8 64-bit
Click Next.

## 5. Configure the Virtual Machine
**Virtual Machine Name**</br>
Enter:
```master-node```

Location:
```E:\Workstation\VM\master-node```
Click Next.</br>

**Disk Configuration**</br>
- Maximum Disk Size: 20 GB
- Select Split virtual disk into multiple files

Click Next.</br>

**Hardware Configuration**</br>

Click Customize Hardware and configure:
- Memory: 2 GB or higher
- Processors: 2 CPUs

Click Finish.

## 6. Mount the ISO Image
1. Right-click the VM and select Settings.
2. Select CD/DVD (IDE).
3. Enable:
```Connect at power on```
4. Select:
```Use ISO image file```
5. Browse to:
```E:\Workstation\OS```
6. Select the CentOS ISO file.
Click OK.</br>
7. Install CentOS Stream 9
   1. Power on the virtual machine.
   2. Configure:
   - Language
   - Date & Time
   - Installation Source</br>

**Software Selection**</br>
Select:
```Server with GUI```

**Installation Destination**</br>

Select:
```Local Standard Disk```

**Network & Hostname**
1. Enable the network connection.
2. Set the hostname.</br>

**Example:**</br>

```prod.hp.com```
3. Click Apply.
4. Click Done.

**User Settings**</br>

Configure:
- Root Password
- User Account</br>

Click **Begin Installation.**<>/br

After installation completes, click:
```Reboot```

## 8.Install Required Packages
   ```yum install -y vim* bash-completion elinks* wget nmap net-tools```
## 9. Verify Network Interfaces
   ```nmcli dev status```

**Connect the interface if required:**
```nmcli dev connect ens34```

**Show available connections:**
```nmcli con show```

## 10.Configure Static IP
    ```nmcli con add con-name static_ip ifname ens33 type ethernet ipv4.addresses 192.168.10.2/24 ipv4.method manual autoconnect yes```
## 11. Configure Dynamic IP (DHCP)
    ```nmcli con add con-name dynamic_ip ifname ens34 type ethernet ipv4.method auto autoconnect yes```
## 12. Configure Host Resolution
**Edit:**
```vi /etc/hosts```

**Add:**
```192.168.10.2 testing.hp.com testing```

Save and exit.

## 13. Verify Connectivity
    ```ping testing.hp.com```
