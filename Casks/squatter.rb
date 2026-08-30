cask "squatter" do
  version "0.4.1"
  sha256 "c9506341fd58106809033120ff4c8b893d544dad90e98c50b981dce18f7c8beb"

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
