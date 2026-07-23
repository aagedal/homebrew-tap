cask "aagedal-photo-agent" do
  version "2.1.2"
  sha256 "7f4b087a04aa9a4708f4b84ed62ec8c32ff8e0b1868070f505ca3ab865a3507b"

  url "https://aagedal.me/apps/Aagedal-Photo-Agent-#{version}.dmg",
      verified: "aagedal.me/apps/"
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
