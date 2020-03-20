#!/bin/sh
SENSOR="sc3235-t31"

sudo mount -o nolock -t nfs 193.169.4.2:/home_b/nfswork/zjqi ~/nfswork/mnt
make clean && make S=${SENSOR}
sudo cp ${SENSOR}.bin ~/nfswork/mnt/ -vf                                                                                                   
md5sum ${SENSOR}.bin
