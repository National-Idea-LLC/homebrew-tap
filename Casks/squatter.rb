cask "squatter" do
  version "0.4.0"
  sha256 "e1dff7b0c6a16c9dd4be5482bcacf08db12830dad0427a22cfaf3794c26601a0"

  url "https://github.com/National-Idea-LLC/squatter/releases/download/v#{version}/Squatter-#{version}.dmg",
      verified: "github.com/National-Idea-LLC/squatter/"
  name "Squatter"
  desc "Menu bar app that shows which process is listening on each port"
  homepage "https://github.com/National-Idea-LLC/squatter"

  auto_updates true
  depends_on macos: :sequoia

  app "Squatter.app"

  zap trash: [
    "~/Library/Preferences/sa.ni.squatter.plist",
  ]
end
