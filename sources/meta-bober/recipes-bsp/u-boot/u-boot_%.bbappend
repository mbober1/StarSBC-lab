FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI =+ " \
    file://0001-Add-StarSBC-custom-support.patch \
    file://fragment.cfg \  
    file://boot.cmd \
    file://fw_env.config \
    "


DEPENDS += "u-boot-mkimage-native"
PROVIDES += "u-boot-default-script"

UBOOT_ENV_SUFFIX = "scr"
UBOOT_ENV = "boot"