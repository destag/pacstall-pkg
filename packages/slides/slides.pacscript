pkgname="slides"
gives="slides"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="0.9.0"
source=("@${pkgname}~${pkgver}::https://github.com/maaslalani/slides/releases/download/v${pkgver}/${gives}_${pkgver}_linux_amd64.tar.gz")
pkgdesc="Terminal based presentation tool "
sha256sums=("3ceccd36310d6f9e0db4983acff5248c7a03d168c6ff7d90dee89448d9083235")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  cd "${pkgname}~${pkgver}"
  mkdir -p "${pkgdir}/usr/bin"

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
