# NotchHold — Homebrew tap

```sh
brew tap rupam-shil/notchhold
brew install --cask notchhold
```

NotchHold turns your Mac's notch into a temporary shelf for files. Drag
something onto it, switch apps, Spaces or displays, and drag it back out.
See https://notchhold.app.

Upgrading later is `brew upgrade --cask notchhold`, though the app also
updates itself through Sparkle.

## The first launch is still blocked

Installing through Homebrew does **not** avoid macOS's Gatekeeper warning.
Homebrew applies the `com.apple.quarantine` flag to every cask and, as of
Homebrew 6, offers no option to skip it. NotchHold is signed but not notarized
by Apple, so the first launch is refused either way.

Allow it once in **System Settings → Privacy & Security → Open Anyway**, or:

```sh
xattr -dr com.apple.quarantine /Applications/NotchHold.app
```

Full explanation: https://notchhold.app/install
