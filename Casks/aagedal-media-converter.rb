cask "aagedal-media-converter" do
  version "4.6.0"
  sha256 "df7531882374e61e4139342aa53aed17d7f40f6653b5e58947429bd4c3a7dd42"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/#{version}/Aagedal_Media_Converter_#{version.dots_to_hyphens}.zip"
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
