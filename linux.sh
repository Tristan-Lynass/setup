sudo apt update
sudo apt -y upgrade
sudo apt install -y vim

copy vimrc


sudo apt install -y gcc valgrind vim


sudo apt install -y make net-tools openssh-server
sudo systemctl status ssh

sudo apt update
sudo apt install exfat-fuse exfat-utils

sudo fdisk -l | grep 'Disk /dev/s'
sudo mkdir /media/name_of_hdd
sudo mount /dev/sdX1 /media/name_of_hdd

cp -R <source_folder> <destination_folder>
du -sh <file|directory path> (File/directory disk usage)
df -h (Available disk space)

#[https://askubuntu.com/questions/1074515/create-one-partition-occupying-all-the-space-on-the-drive-with-gparted]
#[https://phoenixnap.com/kb/linux-create-partition]
#[https://unix.stackexchange.com/questions/315063/mount-wrong-fs-type-bad-option-bad-superblock]
#Setup a new drive:

sudo parted -l
sudo parted /dev/sdc
(parted) select /dev/sdc
(parted) print
(parted) mklabel gpt
(parted) mkpart primary ext4 0% 100%
(parted) quit
sudo mkfs.ext4 /dev/sdc1
sudo mount /dev/sdc1 ./BACKUP_MOUNT/

findmnt -S /dev/sdc1