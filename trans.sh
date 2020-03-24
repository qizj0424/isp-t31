#!/bin/sh
SENSOR="sc2310-t31"

if mountpoint -q ~/nfswork/mnt
then
    echo "mounted"
else
    echo "not mounted"
    mount -o nolock -t nfs 193.169.4.2:/home_b/nfsroot/zjqi ~/nfswork/mnt
fi

make clean && make S=${SENSOR}
cp ${SENSOR}.bin ~/nfswork/mnt/ -vf                                                                                                   
md5sum ${SENSOR}.bin
