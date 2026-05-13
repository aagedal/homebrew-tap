cask "aagedal-media-converter" do
  version "4.1.3"
  sha256 "bc467e710a89fc1d15760dfb6d5e9b74c025ed126a5525754e47104544fd7f8c"

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
