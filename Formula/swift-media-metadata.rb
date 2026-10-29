class SwiftMediaMetadata < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://github.com/aagedal/SwiftMediaMetadata"
  url "https://github.com/aagedal/SwiftMediaMetadata/releases/download/3.0.3/swift-exif-macos-arm64.tar.gz"
  sha256 "bd2c744987601be8173d39a4e4ebe83581ef583a3a8cefcadeba1a9600800bf9"
  license "GPL-3.0-or-later"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    depends_on macos: :ventura
  end

  def install
    libexec.install "swift-exif"
    libexec.install "SwiftMediaMetadata_SwiftMediaMetadata.bundle"
    bin.write_exec_script libexec/"swift-exif"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-exif --version")
    assert_match "Oslo", shell_output("#{bin}/swift-exif geocode --lat 59.9139 --lon 10.7522")
  end
end
