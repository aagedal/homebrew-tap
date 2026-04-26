cask "aagedal-media-converter" do
  version "4.0.0"
  sha256 "e0510d22fa76970db1d3682dd59bd774adeb00ca357019d04f6947a512fedcca"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/#{version}/Aagedal_Media_Converter_#{version}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Converter/"
  name "Aagedal Media Converter"
  desc "Minimalist FFmpeg front end in SwiftUI with batch conversion and watch folders"
  homepage "https://github.com/aagedal/Aagedal-Media-Converter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Converter.app"
end
