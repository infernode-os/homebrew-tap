cask "infernode" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.0"
  sha256 arm:   "08b30e0d7dd6189ed3962de1abfff7e74685a97c670206d8c384057a8e252f05",
         intel: "8c9a7ce4e422e22e3e46606164b91bdba6455cb229539380539af47c79282a6b"

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
