# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit deadbeef-plugins

DESCRIPTION="DeaDBeeF ogg opus decoder plugin"
HOMEPAGE="https://bitbucket.org/Lithopsian/deadbeef-opus"
SRC_URI="https://bitbucket.org/Lithopsian/${PN}/get/v${PV}.tar.bz2 -> ${P}.tar.bz2"

BB_COMMIT="b8da8c5d8bea"
RESTRICT+=" strip"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

RDEPEND+=" >=media-libs/opusfile-0.5:0[float,http]
	media-libs/libogg:0"

DEPEND="${RDEPEND}"

S="${WORKDIR}/Lithopsian-${PN}-${BB_COMMIT}"