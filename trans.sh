#!/bin/sh
sudo mount -o nolock -t nfs 193.169.4.2:/home_b/nfsroot/zjqi ~/nfswork/mnt
make clean && make S=sc2310-t31
sudo cp sc2310-t31.bin ~/nfswork/mnt/ -vf
md5sum sc2310-t31.bin
