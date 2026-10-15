cask "xenith" do
  arch arm: "arm64", intel: "amd64"

  version "0.6.0"
  sha256 arm:   "35939a64f3ecdf1dee4da996b6348269aa8c6aa8c35ff95f90bbac8c1c03d265",
         intel: "ea10497c86d288a0ef4f30ebb6934724a6f96bd1f9f05fa63c518a56edbed5a6"

  url "https://github.com/infernode-os/infernode/releases/download/v#{version}/xenith-#{version}-macos-#{arch}.dmg",
      verified: "github.com/infernode-os/infernode/"
  name "Xenith"
  desc "Text environment from InferNode"
  homepage "https://infernode.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Xenith.app"
end
