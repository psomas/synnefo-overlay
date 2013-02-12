# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_6 )

inherit distutils-r1

DESCRIPTION="A command-line tool for managing clouds"
HOMEPAGE="http://code.grnet.gr/projects/kamaki/"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ansicolors progressbar"

RDEPEND="virtual/python-argparse[${PYTHON_USEDEP}]
		 dev-python/objpool[${PYTHON_USEDEP}]
		 ansicolors? ( dev-python/ansicolors[${PYTHON_USEDEP}] )
		 progressbar? ( dev-python/progress[${PYTHON_USEDEP}] )"
DEPEND="${RDEPEND} dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )

python_install_all() {
	distutils-r1_python_prepare_all
}

python_prepare_all() {
	distutils-r1_python_install_all
}
