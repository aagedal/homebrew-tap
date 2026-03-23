cask "aagedal-media-converter" do
  version "3.8.0"
  sha256 "86554ac0bf12fce6b4402b184861059442051720edec9ca43c76c3c156870eeb"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/v.#{version}/Aagedal-Media-Converter_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Media-Converter/"
  name "Aagedal Media Converter"
  desc "Minimalist FFMPEG front end written in SwiftUI, with support for batch conversion and watch folder."
  homepage "https://github.com/aagedal/Aagedal-Media-Converter"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Converter.app"
end
