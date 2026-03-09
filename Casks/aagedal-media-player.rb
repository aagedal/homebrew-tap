cask "aagedal-media-player" do
  version "1.5.0"
  sha256 "57b64038a253720d4f2601602a7fc227ad31a32e199065428f3ca58372079207"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/v.#{version}/Aagedal-Media-Player_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Player/"
  name "Aagedal Media Player"
  desc "Quickly play video files with JKL playback and timecode support."
  homepage "https://github.com/aagedal/Aagedal-Media-Player"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Player.app"
end
