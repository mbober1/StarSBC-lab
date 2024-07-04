DESCRIPTION = "Test image"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit core-image

INIT_MANAGER = "systemd"
PACKAGE_CLASSES = "package_ipk"

KERNEL_EXTRA_INSTALL = " \
  kernel \
  kernel-devicetree \
  kernel-modules \
"

IMAGE_INSTALL = " \
  ${KERNEL_EXTRA_INSTALL} \
	packagegroup-core-boot \
	swupdate \
	swupdate-www \
	swupdate-client \
	swupdate-tools \
	nano \
	htop \
	openssh \
	e2fsprogs \
	mosquitto \
  network-config-misc \
"

EXTRA_IMAGE_FEATURES = " \
    debug-tweaks \
"

BAD_RECOMMENDATIONS += "udev-hwdb"
