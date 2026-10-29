cask "xenith" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.0"
  sha256 arm:   "e85e00bd73bdff86b4edbc60534bf16ec6b03018dcab14d2db7d5bef65d85ee5",
         intel: "530ff5c7a6d1e959fe70fb6dcb7d4a100098f1a720e98b40ba2d7e78a57fd773"

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
