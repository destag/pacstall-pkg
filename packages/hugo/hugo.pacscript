pkgname="hugo"
gives="hugo"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="0.143.1"
source=("@${pkgname}~${pkgver}::https://github.com/gohugoio/hugo/releases/download/v${pkgver}/${gives}_${pkgver}_Linux-64bit.tar.gz")
pkgdesc="Fast and Flexible Static Site Generator in Go"
sha256sums=("77bd962ab1114c82de77d7d7c6f8cc7bd56fcce44d0ff7f5fb03016884c8e5cf")
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
