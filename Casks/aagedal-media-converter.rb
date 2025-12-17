cask "aagedal-media-converter" do
  version "3.0.1"
  sha256 "a24dfdfd86237cbf7f7d093d65f679e46cbda9240813b78bd6d3dc3b09c0f711"

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
