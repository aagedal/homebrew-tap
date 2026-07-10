cask "aagedal-photo-agent" do
  version "2.1.0"
  sha256 "1ac2e10190c05ce259118c84809043e5a18e5a2521cc14a8318db047f0be7891"

  url "https://codeberg.org/taagedal/Aagedal-Photo-Agent/releases/download/#{version}/Aagedal-Photo-Agent_#{version.tr(".", "-")}.zip",
      verified: "codeberg.org/taagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Batch-edit IPTC photo metadata with variables and AI face-detection tagging"
  homepage "https://codeberg.org/taagedal/Aagedal-Photo-Agent"

  livecheck do
    url "https://codeberg.org/taagedal/Aagedal-Photo-Agent/releases.atom"
    regex(%r{/tag/v?\.?(\d+(?:\.\d+)+)}i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"
end
