cask "xenith" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.0"
  sha256 arm:   "19fc793a8c1a4e0fb5fb568219cb8a76109022a8828e6b6eb28a8816b783183f",
         intel: "6d356efdfad6c951a838b9bb20e5af6f2ddd8e75e7e8e5bb448049a05b90efcd"

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
