pkgname="opa"
gives="opa"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="1.3.0"
source=("@${pkgname}~${pkgver}::https://github.com/open-policy-agent/opa/releases/download/v${pkgver}/${gives}_linux_amd64")
pkgdesc="Open Policy Agent (OPA) is an open source, general-purpose policy engine."
sha256sums=("e6c40609d67fd85a53da4f0366ab456bd4387769ac22a2e92d116cb501a9bc54")
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
