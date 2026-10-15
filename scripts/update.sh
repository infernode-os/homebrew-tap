#!/bin/sh
# Point both casks at the latest InferNode release, using its signed SHA256SUMS.txt.
set -eu
tag=$(gh release view -R infernode-os/infernode --json tagName -q .tagName)
ver=${tag#v}
sums=$(gh release download "${tag}" -R infernode-os/infernode -p SHA256SUMS.txt -O -)
for app in infernode xenith
do
  arm=$(echo "${sums}" | awk -v f="${app}-${ver}-macos-arm64.dmg" '$2==f {print $1}')
  intel=$(echo "${sums}" | awk -v f="${app}-${ver}-macos-amd64.dmg" '$2==f {print $1}')
  [ -n "${arm}" ] && [ -n "${intel}" ] || {
    echo "${app} ${ver}: dmg checksums not in SHA256SUMS.txt" >&2
    exit 1
  }
  sed -i.bak -e "s/^  version \".*\"/  version \"${ver}\"/" \
    -e "s/^  sha256 arm:   \".*\",/  sha256 arm:   \"${arm}\",/" \
    -e "s/^         intel: \".*\"/         intel: \"${intel}\"/" "Casks/${app}.rb"
  rm -f "Casks/${app}.rb.bak"
done
echo "${ver}"
