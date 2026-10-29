class GalleryDlRs < Formula
  desc "Rust gallery downloader with a gallery-dl compatibility backend"
  homepage "https://github.com/aagedal/gallery-dl-rs"
  license "GPL-3.0-only"
  head "https://github.com/aagedal/gallery-dl-rs.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Social-site extraction uses gallery-dl by default, and video pages use
      yt-dlp. Both are optional and found on PATH:
        brew install gallery-dl aagedal/tap/yt-dlp-rs
    EOS
  end

  test do
    assert_match "gallery-dl-rs", shell_output("#{bin}/gallery-dl-rs --version")
  end
end
