class SwiftExif < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://github.com/aagedal/SwiftMediaMetadata"
  version "3.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/aagedal/SwiftMediaMetadata/releases/download/#{version}/swift-exif-macos-arm64.tar.gz"
      sha256 "c5c4e160d61806ba9fd4821e23c1b2e6aa4d0813ff82612673e7fb78dfc919ad"
    end
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
