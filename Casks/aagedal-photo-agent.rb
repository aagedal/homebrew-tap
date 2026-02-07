
cask "aagedal-photo-agent" do
  version "1.5.0"
  sha256 "97de35541fc06792ca0d43e7af682ff748462b04bfef1e4a0abb3ec1b3feeda6"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/v.#{version}/Aagedal-Photo-Agent_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Edit IPTC metadata of photos in batches with support for variables. AI face detection makes it faster to tag names of people."
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"
end
