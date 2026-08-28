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

`Casks/squatter.rb` must be updated on every Squatter release — both `version` and `sha256`.
The hash is of the published DMG asset:

```sh
curl -sL -o /tmp/Squatter.dmg \
  https://github.com/National-Idea-LLC/squatter/releases/download/vX.Y.Z/Squatter-X.Y.Z.dmg
shasum -a 256 /tmp/Squatter.dmg
```

If this file drifts behind a release, `brew install` fails for everyone at once with a
checksum mismatch.

**This is the only copy.** The app repository does not carry a cask — Homebrew installs only
from a tap, so a second copy there would have had no consumer and would just have been one more
thing to keep in sync. Bump it here, and nowhere else.
