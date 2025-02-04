pkgname="just"
gives="just"
breaks=()
replaces=("${gives}")
repology=("project: ${gives}")
pkgver="1.39.0"
source=("@${pkgname}~${pkgver}::https://github.com/casey/just/releases/download/${pkgver}/${gives}-${pkgver}-x86_64-unknown-linux-musl.tar.gz")
pkgdesc="A handy way to save and run project-specific commands"
sha256sums=("1c53fa85a8c021ce7b19814e1a5e1dc0aa10c04bddca75196f7ab6db6130d2cd")
arch=('amd64')
maintainer=("Przemysław Pietras <przemyslaw.pietras@pm.me>")

package() {
  cd "${pkgname}~${pkgver}"
  mkdir -p "${pkgdir}/usr/bin"

  mv "completions/${pkgname}.zsh" "completions/_${pkgname}"

  install -Dm755 -t "${pkgdir}/usr/bin/" "${pkgname}"
  install -Dm644 -t "${pkgdir}/usr/local/share/man/man1/" "${pkgname}.1"
  install -Dm644 -t "${pkgdir}/usr/local/share/licenses/${pkgname}/" "LICENSE"
  install -Dm644 -t "${pkgdir}/usr/local/share/bash-completion/completions/" "completions/${pkgname}.bash"
  install -Dm644 -t "${pkgdir}/usr/local/share/elvish/lib/" "completions/${pkgname}.elvish"
  install -Dm644 -t "${pkgdir}/usr/local/share/fish/vendor_completions.d/" "completions/${pkgname}.fish"
  install -Dm644 -t "${pkgdir}/usr/local/share/zsh/site-functions/" "completions/_${pkgname}"

}

# vim:set ft=sh ts=2 sw=2 et:
