cask "aagedal-media-player" do
  version "1.3.2"
  sha256 "c8edb6f4321771beaaaed6018598bc0ea696603bb10a8dd2a65829afb84ac061"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/v.#{version}/Aagedal-Media-Player_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Player/"
  name "Aagedal Media Player"
  desc "Quickly play video files with JKL playback and timecode support."
  homepage "https://github.com/aagedal/Aagedal-Media-Player"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Player.app"
end
