part list mmc 1 -bootable bootpart
load mmc 1:${bootpart} ${loadaddr} /boot/zImage
load mmc 1:${bootpart} ${fdt_addr} /boot/starsbc-6ull.dtb
setenv bootargs console=ttymxc0,115200 root=/dev/mmcblk1p${bootpart} rootwait rw quiet
bootz ${loadaddr} - ${fdt_addr}