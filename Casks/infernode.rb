cask "infernode" do
  arch arm: "arm64", intel: "amd64"

  version "0.6.0"
  sha256 arm:   "ae1697f19247290bd6f9ced1760dfe49177b30da92984719ea40c2406a3549f4",
         intel: "022954659f145141a216085fd1f431d50fdfcd4370bad618d5ffa06df451c239"

  url "https://github.com/infernode-os/infernode/releases/download/v#{version}/infernode-#{version}-macos-#{arch}.dmg",
      verified: "github.com/infernode-os/infernode/"
  name "InferNode"
  desc "Open-source operating system for AI agents"
  homepage "https://infernode.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "InferNode.app"
end
