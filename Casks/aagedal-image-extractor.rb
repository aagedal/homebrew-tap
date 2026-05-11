cask "aagedal-image-extractor" do
  version "1.1.0"
  sha256 "444b60b335b7b714ae877e16a0f034e4cf966493daf9e7ab1670e929179e47fb"

  url "https://codeberg.org/taagedal/Aagedal-Image-Extractor/releases/download/#{version}/Aagedal-Image-Extractor_#{version.tr(".", "-")}.zip",
      verified: "codeberg.org/taagedal/Aagedal-Image-Extractor/"
  name "Aagedal Image Extractor"
  desc "Batch-extract images from PDF and DOCX files with IPTC metadata"
  homepage "https://codeberg.org/taagedal/Aagedal-Image-Extractor/"

  livecheck do
    url "https://codeberg.org/taagedal/Aagedal-Image-Extractor/releases.atom"
    regex(%r{/tag/v?\.?(\d+(?:\.\d+)+)}i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Image Extractor.app"
end
