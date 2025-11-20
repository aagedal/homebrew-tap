cask "aagedal-media-converter" do
  version "2.9.2"
  sha256 "28b44cd7f7ccae330a6b700439996401324eea3ce16fe4dc8e220365707575f4"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/v.#{version}/Aagedal-Media-Converter_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Converter/"
  name "Aagedal Media Converter"
  desc "Minimalist FFMPEG front end written in SwiftUI, with support for batch conversion and watch folder."
  homepage "https://github.com/aagedal/Aagedal-Media-Converter"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Converter.app"

  caveats do
    <<~EOS
      Replace the placeholder checksum before distributing this cask.
      Generate the SHA-256 with:
        shasum -a 256 AagedalVideoLoop_Converter_#{version.tr(".", "-")}.zip
    EOS
  end
end
