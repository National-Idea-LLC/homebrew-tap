cask "squatter" do
  version "0.4.2"
  sha256 "80fef11bdb9a8a5e72dfd0b9da3a8ef3c84e2289a4f46ac87fe8c73fb31303f3"

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
