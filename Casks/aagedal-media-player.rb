cask "aagedal-media-player" do
  version "2.1.0"
  sha256 "0f6363426a3685816ab33bb034fc4bba9da0759f22ccff91812cd8f89990bca8"

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
