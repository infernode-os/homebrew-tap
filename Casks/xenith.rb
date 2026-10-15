cask "xenith" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "307b380089b51ba46f155b28a803807bf7a24ebbe7970f3d0c82400e61cf337f",
         intel: "6a2128fb73e7c87b633ad978cf10467c2d75cba74fc84ff56b277a1466c7d70c"

  url "https://github.com/infernode-os/infernode/releases/download/v#{version}/xenith-#{version}-macos-#{arch}.dmg",
      verified: "github.com/infernode-os/infernode/"
  name "Xenith"
  desc "Text environment from InferNode"
  homepage "https://infernode.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Xenith.app"
end
