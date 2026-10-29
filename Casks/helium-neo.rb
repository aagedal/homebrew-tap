cask "helium-neo" do
  version "0.20.1.2"
  sha256 "40b572ac7f99895603eb3e4ce6ee600bd8fad966f77952ce9d5261aebb412be9"

  url "https://github.com/aagedal/helium/releases/download/v#{version}-neo/Helium-Neo-#{version}-macOS-arm64-signed.dmg"
  name "Helium Neo"
  desc "Fork of the Helium web browser optimised for journalists"
  homepage "https://github.com/aagedal/helium"

  livecheck do
    url "https://github.com/aagedal/helium/releases/latest/download/helium-neo.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Helium Neo.app"

  zap trash: [
    "~/Library/Application Support/no.aagedal.helium-neo",
    "~/Library/Caches/no.aagedal.helium-neo",
    "~/Library/HTTPStorages/no.aagedal.helium-neo",
    "~/Library/HTTPStorages/no.aagedal.helium-neo.binarycookies",
    "~/Library/Preferences/no.aagedal.helium-neo.plist",
    "~/Library/Saved Application State/no.aagedal.helium-neo.savedState",
  ]
end
