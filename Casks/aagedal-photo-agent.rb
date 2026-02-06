
cask "aagedal-photo-agent" do
  version "1.4.0"
  sha256 "3a6f9b1372e3ff848ef09bed738eb19a2593c845efa909d6944958b16ee0b921"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/v.#{version}/Aagedal-Photo-Agent_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Edit IPTC metadata of photos in batches with support for variables. AI face detection makes it faster to tag names of people."
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"
end
