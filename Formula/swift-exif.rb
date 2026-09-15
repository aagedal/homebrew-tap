class SwiftExif < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://github.com/aagedal/SwiftMediaMetadata"
  version "3.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/aagedal/SwiftMediaMetadata/releases/download/#{version}/swift-exif-macos-arm64.tar.gz"
      sha256 "fe18ea1c893c3fa001fe6f8b3adcf554ab36efaa368b710e9e96a2fa15108451"
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
