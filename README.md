# taagedal/homebrew-tap

A personal Homebrew tap for Aagedal-built apps and CLI tools, hosted
on [Codeberg](https://codeberg.org/taagedal/homebrew-tap).

## Install

Because this tap lives outside GitHub, the URL must be passed
explicitly the first time:

```
brew tap taagedal/tap https://codeberg.org/taagedal/homebrew-tap
```

### CLIs

```
brew install taagedal/tap/swift-exif
```

### Apps (casks)

```
brew install --cask taagedal/tap/aagedal-photo-agent
brew install --cask taagedal/tap/aagedal-image-extractor
brew install --cask taagedal/tap/aagedal-media-converter
brew install --cask taagedal/tap/aagedal-media-player
```

## Migration from GitHub

This tap previously lived at `github.com/aagedal/homebrew-tap` (and
before that, `homebrew-casks`). It has moved to Codeberg under the
`taagedal` namespace. To migrate an existing install:

```
brew untap aagedal/tap   # or aagedal/casks if you never re-tapped
brew tap taagedal/tap https://codeberg.org/taagedal/homebrew-tap
```

Already-installed apps keep working; only future `brew update` /
`brew upgrade` runs need the new tap.
