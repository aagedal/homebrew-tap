cask "aagedal-media-converter" do
  version "2.6.5"
  sha256 "1919cbf404af10b1d1c9a403f3401d7b7f77a5de18bebdaf5528323cf180d66e"

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
