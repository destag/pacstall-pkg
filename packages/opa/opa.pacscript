pkgname="opa"
gives="opa"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="1.1.0"
source=("@${pkgname}~${pkgver}::https://github.com/open-policy-agent/opa/releases/download/v${pkgver}/${gives}_linux_amd64")
pkgdesc="Open Policy Agent (OPA) is an open source, general-purpose policy engine."
sha256sums=("5dfbb79c80232dd226822264f1695fd862976c23c7da197ab86af89c393dcac2")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  mv "${pkgname}_linux_amd64" "${pkgname}"
  chmod +x "${pkgname}"
  ./${pkgname} completion zsh > "_${pkgname}"

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
  install -Dm644 -t "${pkgdir}/usr/local/share/zsh/site-functions/" "_${pkgname}"
}

# vim:set ft=sh ts=2 sw=2 et:
