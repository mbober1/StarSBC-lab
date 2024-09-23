FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://0001-Add-StarSBC-custom-support.patch \
    file://fragment.cfg \
  "

