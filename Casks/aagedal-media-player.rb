cask "aagedal-media-player" do
  version "2.0.1"
  sha256 "cff3c0aa88b0e7799c9c10f269685b3f94bac90f8e3951e2683c379472cd2a82"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/#{version}/Aagedal_Media_Player_#{version.tr(".", "-")}.zip"
  name "Aagedal Media Player"
  desc "Video player with JKL playback and timecode support"
  homepage "https://github.com/aagedal/Aagedal-Media-Player"

  livecheck do
    url "https://raw.githubusercontent.com/aagedal/Aagedal-Media-Player/main/appcast.xml"
    regex(/sparkle:shortVersionString>(\d+(?:\.\d+)+)</i)
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Aagedal Media Player.app"
end
