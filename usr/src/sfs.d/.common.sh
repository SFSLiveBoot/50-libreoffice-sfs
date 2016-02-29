latest_ver() {
  curl -s "https://download.documentfoundation.org/libreoffice/stable/?C=M;O=D" | grep -o 'href="[0-9][^"/]*' | cut -f2 -d'"' | head -1
}

gen_dl_url() {
  local ver="${1:-$(latest_ver)}"
  echo "https://download.documentfoundation.org/libreoffice/stable/${ver}/deb/x86_64/LibreOffice_${ver}_Linux_x86-64_deb.tar.gz"
}
