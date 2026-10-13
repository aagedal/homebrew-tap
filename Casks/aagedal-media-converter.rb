cask "aagedal-media-converter" do
  version "4.5.5"
  sha256 "dfa47c770143992faa59f139c8e6ec5e9111f7c44e1042ab55a120921fb8d21d"

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
