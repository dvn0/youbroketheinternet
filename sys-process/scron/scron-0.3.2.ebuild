# Copyright 2016 © ng0
# Distributed under the terms of the GNU General Public License v3 or later

EAPI="5"

DESCRIPTION="Simple cron daemon"
HOMEPAGE="http://git.2f30.org/scron/"
SRC_URI="http://git.2f30.org/scron/snapshot/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"

RESTRICT="strip"

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}" install
	newinitd "${FILESDIR}/init-0.3.2" crond
	dodoc README
}
