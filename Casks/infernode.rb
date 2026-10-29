cask "infernode" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.0"
  sha256 arm:   "675226714c158b38a2c78e8066de9654dc87871edcf423bf5360b8b45cb8c4b6",
         intel: "bf6e9384ea6984f3d5dd35b7e4b45f506aa33fd26f14824a2b5a4cf29773325c"

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
