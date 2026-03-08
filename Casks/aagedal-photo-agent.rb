
cask "aagedal-photo-agent" do
  version "1.6.0"
  sha256 "707ff399b50d6e221e37524d69bdbff1c6f30e760c2d298cf9a5b9a2b46b2a03"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/v.#{version}/Aagedal-Photo-Agent_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Edit IPTC metadata of photos in batches with support for variables. AI face detection makes it faster to tag names of people."
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"
end
