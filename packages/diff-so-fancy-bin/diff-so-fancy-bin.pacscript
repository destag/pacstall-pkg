pkgname="diff-so-fancy-bin"
gives="diff-so-fancy"
breaks=("${gives}")
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="1.4.14"
source=("@${pkgname}~${pkgver}::https://github.com/so-fancy/diff-so-fancy/releases/download/v${pkgver}/diff-so-fancy")
pkgdesc="Make your diffs human readable for improved code quality and faster defect detection."
sha256sums=("98b2eb61c132f411d6005962ca14c3b5c537770bb283eef2c92dfef196f70983")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  mkdir -p "${pkgdir}/usr/bin"

  install -Dm755 "diff-so-fancy" "${pkgdir}/usr/bin/${gives}"
}

# vim:set ft=sh ts=2 sw=2 et:
