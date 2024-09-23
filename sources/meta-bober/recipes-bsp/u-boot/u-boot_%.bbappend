FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
DEPENDS:append = " u-boot-default-script"

SRC_URI =+ " \
    file://0001-Add-StarSBC-custom-support.patch \
    file://fragment.cfg \  
    "