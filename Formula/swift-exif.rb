class SwiftExif < Formula
  desc "Native Swift ExifTool clone for IPTC photojournalism"
  homepage "https://github.com/aagedal/SwiftExif"
  version "1.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/aagedal/SwiftExif/releases/download/#{version}/swift-exif-#{version}-macos-arm64.tar.gz"
      sha256 "ccdd2b8dac02a01f4920463ab314b3ea9d0149cd4ee297f445bb6e8a4aafc5ef"
    end
    on_intel do
      url "https://github.com/aagedal/SwiftExif/releases/download/#{version}/swift-exif-#{version}-macos-x86_64.tar.gz"
      sha256 "df222ccb4db76881b4efd3c433041970fe289add992a6a9b7b4148e072e48e0c"
    end
  end

  def install
    bin.install Dir["swift-exif-macos-*"].first => "swift-exif"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-exif --version")
  end
end
