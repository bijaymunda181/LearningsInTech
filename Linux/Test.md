set uid
If we want to all user to execute the root user command then we set uid (suid).It can be applied for user level and is applicable for file only.And "rwx" the "x" is replaced by "s".
chmod u+s <filename>

Set gid
If we want to all user of one group to get group ownership permissions then we go for set uid.It can be applicable directory only.And "x" is replaced by "s".
chmod g+s <directory name > 

sticky bit
It protects the data from other users when all users having full permissions on one directory.And "x" is replaced by "t".
chmod o+t <directory name>

user // In linux user is one who uses the system

useradd <user name> // to add user 
-M :-Without creating home directory
-u:- To add userid on creation time.
i.e; useradd -u 1005 -d /home/raju1 raju
-d:-To spicify particular home directory of user manually on creation time.
-U:-Create a group with same name.
useradd -o -u o -g root <username> //To create duplicate root user.

userdel <username> // To delete the user.
-f:-forcefully
-r:-remove home directory and mail spool.

passwd <username> // To give passwd.
-l:-to lock the passwd of user.
i.e; passwd -l <username> //
-u:-To unlock the user's passwd.
-s:-To check the status.

usermod <option> <usename> //To modify user account.
-c:-modyfy comment
-L:-To Lock the user
-G:- To add secondary group.

e.g:- usermod -G <group name> <user name>
-g:-To add primery group.
-U:-To unlock/undo lock user.
-u:-To change uid.
e.g; usermod -u <uid> <user name>

usermod -l <new name> <old name> //To change usename.

-s:-change login shell for user.
e.g; usermod -s </sbin/nologin or /bin/bash> <user name>

usermod -G <user name> //To remove all secondary group.
e.g; usermod -G group1,group3 <username>

-aG:- To add group whthout overwrite.

usermod -o -u 0 bijay //duplicate root user create by changing uid to 0.

gpasswd -d <username> <group name> //To remove user from group.

-l:-To change username.
e.g; usermod -l <new name> <old name>

#chage //change user password expiry information.
-l:-show user passwd information.
e.g; chage -l <user name>

-E:-change account expiry date.
e.g; chage -E 2024-07-30 <user  name>

-M:- Change or modify password expiry date.
e.g; chage -M 90 <username>

-m:-Minimum days between password change.
chage -m 2 <user name>
#note:- If you change your passwd today,you will not change your password for two days.
After 2 days you an change your password.

-d:-It expiry everything.
e.g; chage -d 0 <user name>

-W:-To modify worning days.

-I:-Set password inactive afer expireration to inactive.

chage -E -1 <user name> //IT change account expiry date to never.

#chsh // Change login shell.
-s:- specifylogin shell.
e.g; chsh -s /sbin/nologin <usernamr>

-l:- Print the list of shells listed in /etc/shells.

-v:- Display verson information.

#nmcli // Command line tool for controling network manager.

nmcli dev status // Show device network status.

nmcli dev show // To show the device.

nmcli con show // To show all connection.

nmcli con add con-name "mycon" auto connet yes type ethernet ifname ens33 ipv4.method auto //To add new coonection.

nmcli con up <con-name> //To up the connection.

nmcli con down <con-name> // To down the connection.

nmcli con del <con-name> //To delete the connectio.

nmcli con mod <con-name> // To madify the connectio.

nmcli con mod ens33 autoconnect yes // To update autoconnet as yes of ens33 connectio.

#note:- /etc/sysconfig/network-scripts/      CentOs7  //Device configuration file.  
        /etc/NetworkManager/system-connction/     Centos9 //Device configuration file.  

#crontab // Scheduled task and command on operating systems that runs automatically at specified intervals.Cronjob are commany used for automating repetitive task.

FOR ROOT USER
crontab -e // To edit the cronjob.
*/2 * * * * touch file{1..2} //root user will create file after every 2 min.
crontab -l // To list cron jobs.
crontab -r // To remove cron jobs.

FOR NORMAL USER
cat /etc/crontab //To see cron job list.
crontab -lu <username> //To list all cron job of specified user.
crontab -eu <username> //To create and edit cron jobs.
crontab -ru <username> //To erase or remove the specified users cron jobs.
crontab -r <job id> //To remove the specified cron jobs.
vim /etc/cron.deny // To deny the cron jobs for specified users.
vim /etc/cron.allow // To allow the cron jobs for specified users.

Note:- If boot file are remove or delete , except root user the users are deny to execute the cronjob.
Note:- Whenever run any command first check normal user can execute the command or not if normal user can execute the command then cronjob seduled also apply.

#firewall //A firewall is a network security device or software designed to monitor and control incoming and outgoing network traffic based on predetermined security rules. 
firewall-cmd --list-all // To show default zones detail.
firewall-cmd --add-service=<ssh/http> // To add service active zone temporiry.
firewall-cmd --add-service=<ssh/http> // To add sevice active zone permanent.
#After that reload is required to changes.
firewall-cmd --complete-reload //To reload agter permanent add the service.
firewall-cmd --add-port=<22/80> --permanent // To add port in active zone permanent. 
firewall-cmd --remove-service=<ssh/http> // To remove service from active zone.
firewall-cmd --remove-service=<ssh/http> --permanent //To remove service from active zone permanent.

#selinux
getenforce // Get the current mode os selinux.
setenforce 1 //To enable the selinux mode temporary.
setenforce 0 // To disable the selinux mode temporary.
vim/etc/selinux/config // selinux configuration file.
semanage fcontext -l // This command lists the file context rules managed by SELinux.
ex:- semanage fcontext -l |grep httpd //
semanage fcontext -a -t <dummy_file_context> "/var/www/html/video(/.*)?"// The command you are trying to use is for adding a new SELinux file context rule.
