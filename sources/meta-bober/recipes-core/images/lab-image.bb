DESCRIPTION = "Test image"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit core-image

KERNEL_EXTRA_INSTALL = " \
  kernel \
  kernel-devicetree \
  kernel-modules \
"

IMAGE_INSTALL = " \
  ${KERNEL_EXTRA_INSTALL} \
  packagegroup-core-boot \
  nano \
  htop \
  e2fsprogs \
  firmware-imx-sdma-imx6q \
  openssh \
  network-config-misc \
"

EXTRA_IMAGE_FEATURES = " \
    debug-tweaks \
"

BAD_RECOMMENDATIONS += "udev-hwdb"
