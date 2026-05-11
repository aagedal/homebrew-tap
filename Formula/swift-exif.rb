class SwiftExif < Formula
  desc "Native Swift media-metadata CLI for Exif, IPTC, XMP, and C2PA"
  homepage "https://codeberg.org/taagedal/SwiftExif"
  version "1.6.0"
  license "GPL-3.0-or-later"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    on_arm do
      url "https://codeberg.org/taagedal/SwiftExif/releases/download/#{version}/swift-exif-macos-arm64"
      sha256 "568df1d2c6ff3304d28ef0d91f0ca2bc44e6290f44a24a379ae1a37f024f0919"
    end
  end

  on_linux do
    on_intel do
      url "https://codeberg.org/taagedal/SwiftExif/releases/download/#{version}/swift-exif-linux-x86_64"
      sha256 "7ee27b16740abe716b20aba9386dcaae9e635ed639f2589a430948bf6885c213"
    end
    on_arm do
      url "https://codeberg.org/taagedal/SwiftExif/releases/download/#{version}/swift-exif-linux-aarch64"
      sha256 "e8c3fdbb41f6f76f761176a032cd56efb5fd3d2f2281bc56e1d8260e942d4d0b"
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
