# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="Command line tool for creating images"
HOMEPAGE="https://code.grnet.gr/projects/snf-image-creator"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/ansicolors[${PYTHON_USEDEP}]
		 >=dev-python/progress-1.0.2[${PYTHON_USEDEP}]
		 dev-python/sh"

DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )

python_install_all() {
	distutils-r1_python_prepare_all
}

python_prepare_all() {
	distutils-r1_python_install_all
}
