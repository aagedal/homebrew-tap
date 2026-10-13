cask "aagedal-media-converter" do
  version "4.5.6"
  sha256 "516f7470eedb39a72f5ef7daa8f105df8e1d81f569a15c9525d9e8c39eac1586"

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
