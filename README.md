# InferNode Homebrew tap

```sh
brew install --cask infernode-os/tap/infernode   # InferNode, with the Lucia desktop
brew install --cask infernode-os/tap/xenith      # Xenith on its own
```

Both are the signed, notarized `.dmg` builds from
[InferNode releases](https://github.com/infernode-os/infernode/releases).
Apple Silicon and Intel Macs are both supported.

The casks follow new releases automatically: a scheduled workflow reads each
release's `SHA256SUMS.txt` and updates the version and checksums.
