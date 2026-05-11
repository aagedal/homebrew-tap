class SwiftExif < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://codeberg.org/taagedal/SwiftExif"
  url "https://codeberg.org/taagedal/SwiftExif/archive/1.6.0.tar.gz"
  version "1.6.0"
  sha256 "89136dacb65bd31528647a6ba78334b641e512115e8bb53607ee6b3a134c6ad3"
  license "GPL-3.0-or-later"

  depends_on xcode: ["16.0", :build]
  depends_on :macos
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/swift-exif"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-exif --version")
  end
end
