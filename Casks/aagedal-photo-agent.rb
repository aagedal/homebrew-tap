
cask "aagedal-photo-agent" do
  version "1.3.2"
  sha256 "8ad0fd2ac2b4c2b2667575ad5ac7f1a518df5f2472dc7fe0ff4ba161b617a109"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/v.#{version}/Aagedal-Photo-Agent_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Edit IPTC metadata of photos in batches with support for variables. AI face detection makes it faster to tag names of people."
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"
end
