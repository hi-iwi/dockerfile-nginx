#!/bin/bash
readonly nginxVer='1.25.3'

download() {
  local f="$1"
  local src="$2"
  if [ -f "$f" ]; then
    return 0
  fi
  wget "$src" -O "$f"
}
# https://nginx.org/en/download.html
download "nginx-${nginxVer}.tar.gz" "https://nginx.org/download/nginx-${nginxVer}.tar.gz"
