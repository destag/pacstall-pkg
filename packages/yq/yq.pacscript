pkgname="yq"
gives="yq"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="4.45.1"
source=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/${gives}_linux_amd64.tar.gz")
pkgdesc="Command-line YAML, XML, TOML processor - jq wrapper for YAML/XML/TOML documents"
sha256sums=("290b22a62d0bd3590741557eb6391707a519893d81be975637bc13443140e057")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  cd "${pkgname}~${pkgver}"
  mkdir -p "${pkgdir}/usr/bin"
  mkdir -p completions

  mv yq_linux_amd64 "${pkgname}"

  ./yq completion zsh > completions/_${pkgname}

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
  install -Dm644 -t "${pkgdir}/usr/local/share/zsh/site-functions/" "completions/_${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
