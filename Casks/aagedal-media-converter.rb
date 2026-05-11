cask "aagedal-media-converter" do
  version "4.1.1"
  sha256 "472d70e8e04e21b1b77bb538d1ae095aeb756910878cd8fd6a5e243d7a985426"

  url "https://codeberg.org/taagedal/Aagedal-Media-Converter/releases/download/#{version}/Aagedal_Media_Converter_#{version.dots_to_hyphens}.zip",
      verified: "codeberg.org/taagedal/Aagedal-Media-Converter/"
  name "Aagedal Media Converter"
  desc "Minimalist FFmpeg front end in SwiftUI with batch conversion and watch folders"
  homepage "https://codeberg.org/taagedal/Aagedal-Media-Converter"

  livecheck do
    url "https://codeberg.org/taagedal/Aagedal-Media-Converter/releases.atom"
    regex(%r{/tag/v?\.?(\d+(?:\.\d+)+)}i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Converter.app"
end
