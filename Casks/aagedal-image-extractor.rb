cask "aagedal-image-extractor" do
  version "1.1.0"
  sha256 "444b60b335b7b714ae877e16a0f034e4cf966493daf9e7ab1670e929179e47fb"
  
  url "https://github.com/aagedal/Aagedal-Image-Extractor/releases/download/v.#{version}/Aagedal-Image-Extractor_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Image-Extractor/"
  name "Aagedal Image Extractor"
  desc "Quickly batch extract images from PDFs and DOCX files with IPTC metadata."
  homepage "https://github.com/aagedal/Aagedal-Image-Extractor/"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Media Converter.app"

  caveats do
    <<~EOS
      Thanks for installing Aagedal Image Extractor #{version}! I hope you like it :D
    EOS
  end
end
