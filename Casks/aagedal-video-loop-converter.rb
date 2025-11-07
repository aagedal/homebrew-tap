cask "aagedal-video-loop-converter" do
  version "2.6.1"
  sha256 "20038b91623beaa7d639bd340c713164541b54490d543b53cfac1b842d37491c"

  url "https://github.com/aagedal/Aagedal-VideoLoop-Converter/releases/download/v.#{version}/AagedalVideoLoop_Converter_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-VideoLoop-Converter/"
  name "Aagedal VideoLoop Converter"
  desc "Minimalist FFMPEG front end written in SwiftUI, with support for batch conversion and watch folder."
  homepage "https://github.com/aagedal/Aagedal-VideoLoop-Converter"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal VideoLoop Converter.app"

  caveats do
    <<~EOS
      Replace the placeholder checksum before distributing this cask.
      Generate the SHA-256 with:
        shasum -a 256 AagedalVideoLoop_Converter_#{version.tr(".", "-")}.zip
    EOS
  end
end
