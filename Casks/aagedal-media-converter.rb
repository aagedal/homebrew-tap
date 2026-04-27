cask "aagedal-media-converter" do
  version "4.0.1"
  sha256 "05c395e66cef98346f305adf11a291b2e67c940f4be8f38fcf3a34cbeeb51921"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/#{version}/Aagedal_Media_Converter_#{version.dots_to_hyphens}.zip",
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
