# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_1,3_2} )

inherit distutils-r1

DESCRIPTION="A simple module to add ANSI colors and decorations to your strings"
HOMEPAGE="http://github.com/verigak/colors/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )
