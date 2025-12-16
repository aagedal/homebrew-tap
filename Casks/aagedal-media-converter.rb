cask "aagedal-media-converter" do
  version "3.0"
  sha256 "dad523c0d939bea63befa745a3b0cda1254e05debe4add3e830ee17402cd826f"

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
      Thanks for installing Aagedal Media Converter #{version}! I hope you like it :D
    EOS
  end
end
