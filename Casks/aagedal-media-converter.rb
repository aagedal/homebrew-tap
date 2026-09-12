cask "aagedal-media-converter" do
  version "4.4.0"
  sha256 "18756d40c9218fa9655ff724f1e5aed666cab21e92e7cbfac424c05a5688bc54"

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
