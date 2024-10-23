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


