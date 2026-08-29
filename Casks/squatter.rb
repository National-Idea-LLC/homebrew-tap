cask "squatter" do
  version "0.2.0"
  sha256 "7b6b7f35f80000ce2c7adfe5036ce324230f1c280810429ab5083e72ef8e0e86"

  url "https://github.com/National-Idea-LLC/squatter/releases/download/v#{version}/Squatter-#{version}.dmg",
      verified: "github.com/National-Idea-LLC/squatter/"
  name "Squatter"
  desc "Menu bar app that shows which process is listening on each port"
  homepage "https://github.com/National-Idea-LLC/squatter"

  depends_on macos: :sequoia

  app "Squatter.app"

  zap trash: [
    "~/Library/Preferences/sa.ni.squatter.plist",
  ]
end
