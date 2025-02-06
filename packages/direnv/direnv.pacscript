pkgname="direnv"
gives="direnv"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="2.35.0"
source=("@${pkgname}~${pkgver}::https://github.com/direnv/direnv/releases/download/v${pkgver}/${gives}.linux-amd64")
pkgdesc="A shell extension that manages your environment"
sha256sums=("55c294f4376397c68b1f659f049fb104dc2ecd0fcb15a15949d7f748e3f70b66")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  mv "${pkgname}.linux-amd64" "${pkgname}"

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
