cask "squatter" do
  version "0.3.0"
  sha256 "e978b4686dba69577ad347ee3b485f4f0169d4b49ea6b5d749b31b5ab391a863"

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
