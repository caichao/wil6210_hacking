#!/bin/bash

#KERNEL_SRC_DIR=/lib/modules/$(uname -r)/build

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
WIL6210_SRC_DIR=${SCRIPT_DIR}/wil6210

#WIL6210_INSTALL_DIR=kernel/drivers/net/wireless/ath/wil6210

#sudo make -C ${KERNEL_SRC_DIR} M=${WIL6210_SRC_DIR} INSTALL_MOD_DIR=${WIL6210_INSTALL_DIR} modules_install

#sudo modprobe -q -r wil6210
#sudo modprobe wil6210

echo "We first want to remove the old module-------"
sudo modprobe -r wil6210
echo "Remove ok"
sleep 1
echo `lsmod | grep wil6210`

echo "Insert the new module"
sudo insmod $WIL6210_SRC_DIR/wil6210.ko
sleep 1
echo "Insertion ok"
echo `dmesg | grep customized`

