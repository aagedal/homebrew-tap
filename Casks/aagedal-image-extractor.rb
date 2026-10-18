cask "aagedal-image-extractor" do
  version "1.2.0"
  sha256 "cdffc9c2619a4de72660743238c6bb008eef1a28984e0ae72533eb5d35a54fa5"

  url "https://github.com/aagedal/Aagedal-Image-Extractor/releases/download/v.#{version}/Aagedal-Image-Extractor_#{version.tr(".", "-")}.zip"
  name "Aagedal Image Extractor"
  desc "Extract images from documents and archives with IPTC metadata"
  homepage "https://github.com/aagedal/Aagedal-Image-Extractor"

  livecheck do
    url "https://github.com/aagedal/Aagedal-Image-Extractor/releases/latest"
    strategy :page_match
    regex(%r{/tag/v?\.?(\d+(?:\.\d+)+)}i)
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Aagedal Image Extractor.app"
end
