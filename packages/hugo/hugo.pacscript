pkgname="hugo"
gives="hugo"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="0.164.0"
source=("@${pkgname}~${pkgver}::https://github.com/gohugoio/hugo/releases/download/v${pkgver}/${gives}_${pkgver}_Linux-64bit.tar.gz")
pkgdesc="Fast and Flexible Static Site Generator in Go"
sha256sums=("d9c8b17285ea4ec004d9f814273ea910f2051ce02c284993fd1f91ba455ae50d")
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
