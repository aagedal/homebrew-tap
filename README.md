# aagedal/homebrew-tap

A personal Homebrew tap for Aagedal-built apps and CLI tools.

## Install

```
brew tap aagedal/tap
```

### CLIs

```
brew install aagedal/tap/swift-exif
```

### Apps (casks)

```
brew install --cask aagedal/tap/aagedal-photo-agent
brew install --cask aagedal/tap/aagedal-image-extractor
brew install --cask aagedal/tap/aagedal-media-converter
brew install --cask aagedal/tap/aagedal-media-player
```

## Migration from Codeberg

If you tapped this repository from Codeberg, switch back to the
standard GitHub tap:

```
brew untap taagedal/tap
brew tap aagedal/tap
```

If you still use the older `aagedal/casks` name, untap it before
running `brew tap aagedal/tap`. Already-installed apps remain
installed; the change affects future `brew update` and `brew upgrade`
runs.
