pkgname="kubectl"
gives="kubectl"
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="1.32.1"
source=("@${pkgname}~${pkgver}::https://dl.k8s.io/release/v${pkgver}/bin/linux/amd64/kubectl")
pkgdesc="Kubernetes.io kubectl binary"
sha256sums=("e16c80f1a9f94db31063477eb9e61a2e24c1a4eee09ba776b029048f5369db0c")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  cd "${pkgname}~${pkgver}"
  mkdir -p "${pkgdir}/usr/bin"
  mkdir -p completions

  ./kubectl completion zsh > completions/_${pkgname}

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
  install -Dm644 -t "${pkgdir}/usr/local/share/zsh/site-functions/" "completions/_${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
