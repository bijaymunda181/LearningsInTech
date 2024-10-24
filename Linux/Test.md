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