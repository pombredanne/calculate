# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit linux-info linux-mod

COMMIT="53556670f23ad0167618f95a041f47ef0cd52e98"

DESCRIPTION="Realtek RTL8723DE module for Linux kernel"
HOMEPAGE="https://github.com/jeremyb31/rtl8723de"
SRC_URI="https://github.com/jeremyb31/rtl8723de/archive/${COMMIT}.zip -> rtl8723de-${PV}.zip"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/linux-sources"
RDEPEND=""

S="${WORKDIR}/rtl8723de-${COMMIT}"

MODULE_NAMES="8723de(net/wireless)"
BUILD_TARGETS="all"
BUILD_TARGET_ARCH="${ARCH}"

pkg_setup() {
	linux-mod_pkg_setup
	BUILD_PARAMS="KERN_DIR=${KV_DIR} KSRC=${KV_DIR} KERN_VER=${KV_FULL} O=${KV_OUT_DIR} V=1 KBUILD_VERBOSE=1"
}
