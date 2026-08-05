pkgname="oh-my-posh-bin"
gives="oh-my-posh"
breaks=("${gives}")
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="30.5.0"
source=("@${pkgname}~${pkgver}::https://cdn.ohmyposh.dev/releases/v${pkgver}/posh-linux-amd64")
pkgdesc="The most customisable and low-latency cross platform/shell prompt renderer"
sha256sums=("03bc5c288b6f2fc4ad9db4e11f191e970b31e93d3aa2e55ecc09bd7096226484")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  mkdir -p "${pkgdir}/usr/bin"

  install -Dm755 "posh-linux-amd64" "${pkgdir}/usr/bin/${gives}"
}

# vim:set ft=sh ts=2 sw=2 et:
