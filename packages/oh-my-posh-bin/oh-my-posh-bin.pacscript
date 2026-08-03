pkgname="oh-my-posh-bin"
gives="oh-my-posh"
breaks=("${gives}")
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="30.4.0"
source=("@${pkgname}~${pkgver}::https://cdn.ohmyposh.dev/releases/v${pkgver}/posh-linux-amd64")
pkgdesc="The most customisable and low-latency cross platform/shell prompt renderer"
sha256sums=("7c914613852e5fa76f8317c1ffe80e2b6ebcf974ca96589cd940966f07177ef2")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  mkdir -p "${pkgdir}/usr/bin"

  install -Dm755 "posh-linux-amd64" "${pkgdir}/usr/bin/${gives}"
}

# vim:set ft=sh ts=2 sw=2 et:
