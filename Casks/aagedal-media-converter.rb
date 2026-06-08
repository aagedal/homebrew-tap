cask "aagedal-media-converter" do
  version "4.2.0"
  sha256 "0a3f1a675e25c6dd34890b0c18b227b74599c6dcaed19718c8b6eb553658c186"

  url "https://aagedal.me/apps/Aagedal_Media_Converter_#{version.dots_to_hyphens}.zip",
      verified: "aagedal.me/apps/"
  name "Aagedal Media Converter"
  desc "Minimalist FFmpeg front end in SwiftUI with batch conversion and watch folders"
  homepage "https://codeberg.org/taagedal/Aagedal-Media-Converter"

  livecheck do
    url "https://codeberg.org/taagedal/Aagedal-Media-Converter/raw/branch/main/appcast.xml"
    regex(/sparkle:shortVersionString>(\d+(?:\.\d+)+)</i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Converter.app"
end