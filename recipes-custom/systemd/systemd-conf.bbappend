FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append += "file://logind.conf"

do_install_append() {
	install -m 0644 ${WORKDIR}/logind.conf ${D}/etc/systemd/
}
