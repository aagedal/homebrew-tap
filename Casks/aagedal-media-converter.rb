cask "aagedal-media-converter" do
  version "4.1.2"
  sha256 "5d11dc0f0da1a0744ac4eb0e5c9c02f07f76be466e89669f840fb7b2d84abc5b"

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
