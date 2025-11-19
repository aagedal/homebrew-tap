cask "aagedal-media-converter" do
  version "2.9"
  sha256 "4a31bbb1ff65b57ac7e3b6aa095c3bf10489fd17325f39a3c0c80ded759af7b0"

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
