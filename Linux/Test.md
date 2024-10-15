set uid
If we want to all user to execute the root user command then we set uid (suid).It can be applied for user level and is applicable for file only.And "rwx" the "x" is replaced by "s".
chmod u+s <filename>

Set gid
If we want to all user of one group to get group ownership permissions then we go for set uid.It can be applicable directory only.And "x" is replaced by "s".
chmod g+s <directory name > 

sticky bit
It protects the data from other users when all users having full permissions on one directory.And "x" is replaced by "t".
chmod o+t <directory name>

