FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KERNEL_SRC = "git://github.com/SoMLabs/somlabs-linux-imx.git;protocol=http"

SRC_URI = "\
	${KERNEL_SRC};branch=${KERNEL_BRANCH} \
	file://onewire.cfg \
	file://mpu6050.cfg \
	file://cleanup.cfg \
	file://cleanup2.cfg \
	file://imx_dma_fix.cfg \
	file://starsbc-6ull-custom.dts \
"

KERNEL_BRANCH = "somlabs_imx_6.1.36-2.1.0"
SRCREV = "bd86f752a1d162f8cd84c76b833561da7802631d"

LINUX_VERSION = "6.1.36"
LOCALVERSION = "-somlabs"

IMX_KERNEL_CONFIG_AARCH32:starsbc-6ull-custom = "somlabs_6ull_defconfig"

# Remove the kernel-image dependency to not install additional kernel packages
RDEPENDS:${KERNEL_PACKAGE_NAME}-base = ""


do_configure:append() {

	# Add custom DT
	cp ${WORKDIR}/starsbc-6ull-custom.dts ${S}/arch/arm/boot/dts
	echo "dtb-$(CONFIG_SOC_IMX6UL) += starsbc-6ull-custom.dtb" >> ${S}/arch/arm/boot/dts/Makefile

	# Apply fragments
	cat ../onewire.cfg >> ${B}/.config
	cat ../mpu6050.cfg >> ${B}/.config
	cat ../cleanup.cfg >> ${B}/.config
	cat ../cleanup2.cfg >> ${B}/.config
	cat ../imx_dma_fix.cfg >> ${B}/.config
}