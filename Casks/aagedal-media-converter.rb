cask "aagedal-media-converter" do
  version "4.3.0"
  sha256 "72bad6e3fdadb5434dcb3843d971cb7978849a74efdc4c09363a4ba0f7bce146"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/#{version}/Aagedal_Media_Converter_#{version.dots_to_hyphens}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Converter/"
  name "Aagedal Media Converter"
  desc "Minimalist FFmpeg front end in SwiftUI with batch conversion and watch folders"
  homepage "https://github.com/aagedal/Aagedal-Media-Converter"

  livecheck do
    url "https://raw.githubusercontent.com/aagedal/Aagedal-Media-Converter/main/appcast.xml"
    regex(/sparkle:shortVersionString>(\d+(?:\.\d+)+)</i)
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Aagedal Media Converter.app"
end
