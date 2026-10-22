cask "infernode" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.1"
  sha256 arm:   "9b732e7845251aa678cffe5f6af51143ac0959191351646559b1af35511f9c30",
         intel: "ed056b021273154b0ac95f03c3b734a3846c90f35b45052b5b137fb51fe7c7f6"

  url "https://github.com/infernode-os/infernode/releases/download/v#{version}/infernode-#{version}-macos-#{arch}.dmg",
      verified: "github.com/infernode-os/infernode/"
  name "InferNode"
  desc "Open-source operating system for AI agents"
  homepage "https://infernode.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "InferNode.app"
end
