cask "aagedal-media-player" do
  version "1.2.2"
  sha256 "a445872ba7bcb213c860ac650959c37cf4ccf2d399a1d714f83a4878eed11e3d"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/v.#{version}/Aagedal-Media-Player_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Player/"
  name "Aagedal Media Player"
  desc "Quickly play video files with JKL playback and timecode support."
  homepage "https://github.com/aagedal/Aagedal-Media-Player"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Player.app"
end
