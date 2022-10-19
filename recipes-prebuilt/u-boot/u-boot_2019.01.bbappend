PROVIDES = "virtual/bootloader"
inherit uboot-config deploy

SRC_URI_append += "file://u-boot.bin.usb.signed"
SRC_URI_append += "file://u-boot.bin.sd.bin.signed"
SRC_URI_append += "file://u-boot.bin.signed"

FILES_${PN} += "/*"

do_install () {
  install -d ${DEPLOY_DIR_IMAGE}
  install ${S}/../u-boot.bin.usb.signed ${DEPLOY_DIR_IMAGE}
  install ${S}/../u-boot.bin.sd.bin.signed ${DEPLOY_DIR_IMAGE}
  install ${S}/../u-boot.bin.signed ${DEPLOY_DIR_IMAGE}
}
#addtask deploy before do_build after do_compile
