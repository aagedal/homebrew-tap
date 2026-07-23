class SwiftExif < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://github.com/aagedal/SwiftExif"
  version "1.8.1"
  license "GPL-3.0-or-later"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    on_arm do
      url "https://codeberg.org/taagedal/SwiftExif/releases/download/#{version}/swift-exif-macos-arm64"
      sha256 "4ce9cca1c36ad208496bfe1ddb237f2fa17a7913d728bb02d6e15c8f97d238a1"
    end
  end

  def install
    binary = Dir["swift-exif-*"].first
    chmod 0755, binary
    bin.install binary => "swift-exif"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-exif --version")
  end
end
