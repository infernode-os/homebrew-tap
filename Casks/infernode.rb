cask "infernode" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "7d88d6fcb9769cbd2214aed59db59e40fb43684499a4688dc01c5e0e72223dc5",
         intel: "6fbcc7419cd6e8826ab85d74aab9cc2eb44334616146506145fc2e760517d3f9"

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
