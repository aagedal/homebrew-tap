# aagedal/homebrew-tap

A personal Homebrew tap for Aagedal-built apps and CLI tools.

## Install

```
brew tap aagedal/tap
```

### CLIs

```
brew install swift-exif
```

### Apps (casks)

```
brew install --cask aagedal-photo-agent
brew install --cask aagedal-image-extractor
brew install --cask aagedal-media-converter
brew install --cask aagedal-media-player
```

## Migration from `aagedal/casks`

The repo was renamed from `homebrew-casks` to `homebrew-tap`. GitHub
redirects the old URL, so existing installs keep working — but the new
short name is cleaner. To migrate:

```
brew untap aagedal/casks
brew tap aagedal/tap
```

Old-style installs like `brew install aagedal/casks/aagedal-photo-agent`
continue to work via GitHub's redirect.
