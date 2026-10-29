class YtDlpRs < Formula
  desc "Native Rust adaptation of yt-dlp"
  homepage "https://github.com/aagedal/yt-dlp-rs"
  license "Unlicense"

  livecheck do
    url :homepage
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v0.6.0-beta.1/yt-dlp-rs-v0.6.0-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "375bc17a89ac34af1d614c80d3bdf2ace1d4503c3ffdd9723a19ace3628a5e73"
    end
    on_intel do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v0.6.0-beta.1/yt-dlp-rs-v0.6.0-beta.1-x86_64-apple-darwin.tar.gz"
      sha256 "64b7ab276c447afd8d6ad2984e97d45626b505ff39a6ad139457649be12d5cb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v0.6.0-beta.1/yt-dlp-rs-v0.6.0-beta.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d36cb794e374a40ff09796fcac185d2c010d9cb2ecf0556c4309026405956f2"
    end
    on_intel do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v0.6.0-beta.1/yt-dlp-rs-v0.6.0-beta.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7dd5e56c303409e0efcad83dddb1ed2568c9e1080029c723a06c34515c7c5463"
    end
  end

  def install
    bin.install "yt-dlp-rs"
  end

  def caveats
    <<~EOS
      FFmpeg and a JavaScript runtime are optional and found on PATH:
        brew install ffmpeg deno
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yt-dlp-rs --version")
  end
end
