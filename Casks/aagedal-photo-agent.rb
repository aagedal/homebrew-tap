cask "aagedal-photo-agent" do
  version "2.2.0"
  sha256 "1db551f9fe0de23a3f3ec4a12dd1d2f64dc474204f7be4812dd59b0842137424"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/#{version}/Aagedal-Photo-Agent-#{version}.dmg",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Batch-edit IPTC photo metadata with variables and AI face-detection tagging"
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  livecheck do
    url "https://raw.githubusercontent.com/aagedal/Aagedal-Photo-Agent/main/appcast.xml"
    regex(/sparkle:shortVersionString>(\d+(?:\.\d+)+)</i)
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Aagedal Photo Agent.app"
end
