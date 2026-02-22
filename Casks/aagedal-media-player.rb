cask "aagedal-media-player" do
  version "1.1.2"
  sha256 "2b42543270a1444ef38ccddab1a90899609af01e8b4bce37e95f5d4f6de8faf1"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/v.#{version}/Aagedal-Media-Player_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Player/"
  name "Aagedal Media Player"
  desc "Quickly play video files with JKL playback and timecode support."
  homepage "https://github.com/aagedal/Aagedal-Media-Player"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Player.app"
end
