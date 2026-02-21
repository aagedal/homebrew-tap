cask "aagedal-media-player" do
  version "1.0.1"
  sha256 "2774e4bf424ec1525a75ab324036d1138bb3c9d415264dba57d7cb0af715ed84"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/v.#{version}/Aagedal-Media-Player_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Player/"
  name "Aagedal Media Player"
  desc "Quickly play video files with JKL playback and timecode support."
  homepage "https://github.com/aagedal/Aagedal-Media-Player"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Player.app"
end
