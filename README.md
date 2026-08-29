# National-Idea-LLC/homebrew-tap

Homebrew tap for [Squatter](https://github.com/National-Idea-LLC/squatter) — a minimal macOS
menu bar app that lists every listening TCP port, shows the owning process, and lets you open
it, copy its URL, or kill it.

## Install

```sh
brew install --cask National-Idea-LLC/tap/squatter
```

Requires macOS 15 (Sequoia) or later. The build is signed with a Developer ID and notarized
by Apple.

## Maintaining this tap

`Casks/squatter.rb` is bumped automatically. Publishing a release in
[National-Idea-LLC/squatter](https://github.com/National-Idea-LLC/squatter) triggers a workflow
that downloads the DMG asset, verifies the app inside it is notarized **and carries its own
stapled ticket**, checks the bundle version matches the tag, then opens and merges a PR here
with the new `version` and `sha256`.

It goes through a PR rather than pushing to `main` because `main` requires verified signatures
and a commit pushed by a token is unsigned; GitHub signs the squash merge itself.

To do it by hand — if the workflow is broken, or for a release published outside it:

```sh
curl -sL -o /tmp/Squatter.dmg \
  https://github.com/National-Idea-LLC/squatter/releases/download/vX.Y.Z/Squatter-X.Y.Z.dmg
shasum -a 256 /tmp/Squatter.dmg
```

Update both `version` and `sha256`. If they disagree with the published asset, `brew install`
fails for everyone at once with a checksum mismatch.

**This is the only copy.** The app repository does not carry a cask — Homebrew installs only
from a tap, so a second copy there would have had no consumer and would just have been one more
thing to keep in sync. Bump it here, and nowhere else.
