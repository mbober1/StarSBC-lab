FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DEPENDS += "lzop-native"

SRC_URI =+ " \
    file://0001-Add-StarSBC-custom-support.patch \
    file://fragment.cfg \
  "

LOCALVERSION = "-lab"
