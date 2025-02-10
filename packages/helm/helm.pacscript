pkgname="helm"
gives="helm"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="3.17.0"
source=("@${pkgname}~${pkgver}::https://get.helm.sh/${gives}-v${pkgver}-linux-amd64.tar.gz")
pkgdesc="The Kubernetes Package Manager"
sha256sums=("fb5d12662fde6eeff36ac4ccacbf3abed96b0ee2de07afdde4edb14e613aee24")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  cd "${pkgname}~${pkgver}"
  mkdir -p "${pkgdir}/usr/bin"
  mkdir -p completions

  ./helm completion zsh > completions/_${pkgname}

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
  install -Dm644 -t "${pkgdir}/usr/local/share/zsh/site-functions/" "completions/_${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
