cask "aagedal-media-player" do
  version "2.1.1"
  sha256 "1ceb31b8e7753cf71fe4d355e54f733392bf0354bd28213b9354d4fb641b83b8"

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
