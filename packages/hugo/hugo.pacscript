pkgname="hugo"
gives="hugo"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="0.143.0"
source=("@${pkgname}~${pkgver}::https://github.com/gohugoio/hugo/releases/download/v${pkgver}/${gives}_${pkgver}_Linux-64bit.tar.gz")
pkgdesc="Fast and Flexible Static Site Generator in Go"
sha256sums=("b8948388d739399c59ac71219c1b6099cb8c462d69619e7fd4947c88dce54738")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  cd "${pkgname}~${pkgver}"
  mkdir -p "${pkgdir}/usr/bin"

  ./${pkgname} completion zsh > "_${pkgname}"

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
  install -Dm644 -t "${pkgdir}/usr/local/share/zsh/site-functions/" "_${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
