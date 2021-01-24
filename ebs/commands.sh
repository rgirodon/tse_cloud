sudo fdisk -l

sudo mkfs -t ext4 /dev/xvdf

sudo mkdir /mnt/volume/

sudo mount /dev/xvdf /mnt/volume/

df -hk

sudo touch /mnt/volume/testfile

sudo umount /mnt/volume/

# detach volume via web console

# re-attach volume via web console

sudo mount /dev/xvdf /mnt/volume/

ls /mnt/volume

