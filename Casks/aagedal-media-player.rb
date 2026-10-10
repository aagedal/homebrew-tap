cask "aagedal-media-player" do
  version "2.0.0"
  sha256 "51af4270a23a75dac2698815fda2a392e9119ef6544b4bc8c8391b085423b309"

  url "https://github.com/aagedal/Aagedal-Media-Player/releases/download/#{version}/Aagedal_Media_Player_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Player/"
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
