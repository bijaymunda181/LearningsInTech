This is the test file. 
set uid
If we want to all user to execute the root user command then we set uid (suid).It can be applied for user level and is applicable for file only.And "rwx" the "x" is replaced by "s".
chmod u+s <filename>

Set gid
If we want to all user of one group to get group ownership permissions then we go for set uid.It can be applicable directory only.And "x" is replaced by "s".
chmod g+s <directory name > 

sticky bit
It protects the data from other users when all users having full permissions on one directory.And "x" is replaced by "t".
chmod o+t <directory name>

Partition:-
Devide a single hard drive into many logical drive devides is partition.

Q.How to create partition 
fdisk /dev/sdb

n:- select n for new partition

t:- To change the partition type.
83- for linux file system
82-for swap
8e-for lvm

d:- For delete a partition.

Note:-fdisk can create 4 partition 3 primary and 1 is extended partition.And gdisk can create 128 partition .
