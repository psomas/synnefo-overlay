# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1 eutils versionator

DESCRIPTION="A set of Python tools to manage versions, help implement the git flow development process"
HOMEPAGE="https://github.com/grnet/devflow"
MY_P="${PN}-$(get_version_component_range 1-2)$(get_version_component_range 3-3)"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/python-argparse[${PYTHON_USEDEP}]
	dev-python/ipaddr[${PYTHON_USEDEP}]
	>=dev-python/fabric-1.4.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND} dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.md )
