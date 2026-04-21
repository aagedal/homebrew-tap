cask "aagedal-photo-agent" do
  version "1.6.9"
  sha256 "f76ac5118991ea9f78f482b77f72f940db0e68bf2c2b5c4d5a13daa788387d22"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/v.#{version}/Aagedal-Photo-Agent_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Batch-edit IPTC photo metadata with variables and AI face-detection tagging"
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"
end
