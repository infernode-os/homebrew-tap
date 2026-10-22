cask "xenith" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.1"
  sha256 arm:   "8fce8ea1988f78543664b9bb80bd82b2f74ae2d48354d8733153c81c44f3cf47",
         intel: "fd26fbc6dcaba7c8a545ebb26cc4bd9e4c4db6fe18aff623369d330b1016d904"

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
