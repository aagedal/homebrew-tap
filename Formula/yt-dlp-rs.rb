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
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v1.0.0-rc.2/yt-dlp-rs-v1.0.0-rc.2-aarch64-apple-darwin.tar.gz"
      sha256 "e40600e8d97a0f6d58ce4e1bbd0425b92db3f99b5a1f0761aaa43795d055f569"
    end
    on_intel do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v1.0.0-rc.2/yt-dlp-rs-v1.0.0-rc.2-x86_64-apple-darwin.tar.gz"
      sha256 "4520473bf9237a7701c39f2b009499707b14eab7e6d351ebd02140a127a46ef4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v1.0.0-rc.2/yt-dlp-rs-v1.0.0-rc.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9296c62e92b1bd46be55b6a62722e44b420c4c869626518b803eb502fbda891a"
    end
    on_intel do
      url "https://github.com/aagedal/yt-dlp-rs/releases/download/v1.0.0-rc.2/yt-dlp-rs-v1.0.0-rc.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58d8303ccb3af7de279e19c04e6357e0d6236e31da90b488bf1573ee4330d615"
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
