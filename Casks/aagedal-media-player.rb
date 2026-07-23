cask "aagedal-media-player" do
  version "1.6.0"
  sha256 "1c842730d213594dbe2630dd7be141363495b73e8646ec08f3587b23dde3e516"

  url "https://codeberg.org/taagedal/Aagedal-Media-Player/releases/download/#{version}/Aagedal-Media-Player_#{version.tr(".", "-")}.zip",
      verified: "codeberg.org/taagedal/Aagedal-Media-Player/"
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
