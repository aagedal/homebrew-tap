class SwiftMediaMetadata < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://github.com/aagedal/SwiftMediaMetadata"
  url "https://github.com/aagedal/SwiftMediaMetadata/releases/download/3.1.4/swift-exif-macos-arm64.tar.gz"
  sha256 "b4dfa4a06b6b850cdf08c750c0914894b98ce383f7017727c17d3e8eebc1dcef"
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
