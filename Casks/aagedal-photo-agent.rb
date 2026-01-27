
cask "aagedal-photo-agent" do
  version "1.0.0"
  sha256 "797656220b9f9e7017fc634c4476862e2a948fdbe7d687208d6b2a2c836aa853"

  url "https://github.com/aagedal/Aagedal-Photo-Agent/releases/download/v.#{version}/Aagedal-Media-Converter_#{version.tr(".", "-")}.zip",
      verified: "github.com/aagedal/Aagedal-Photo-Agent/"
  name "Aagedal Photo Agent"
  desc "Edit IPTC metadata of photos in batches with support for variables. AI face detection makes it faster to tag names of people."
  homepage "https://github.com/aagedal/Aagedal-Photo-Agent"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Aagedal Photo Agent.app"

  caveats do
    <<~EOS
      Thanks for installing Aagedal Photo Agent #{version}! I hope you like it :D
    EOS
  end
end
