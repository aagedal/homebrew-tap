cask "aagedal-media-player" do
  version "2.2.0"
  sha256 "672b8095a365289ce2f1fc5fdd1708697eb5859762fc67836ccec1a132b8f402"

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
