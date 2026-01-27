cask "aagedal-media-converter" do
  version "3.7.3"
  sha256 "641d0a807c6db8147081776968d8306c59a786b0abad358b3c7263e72a729cc0"

  url "https://github.com/aagedal/Aagedal-Media-Converter/releases/download/v.#{version}/Aagedal-Media-Converter#{version.tr(".", "-")}.zip",
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
