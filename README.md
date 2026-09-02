# NotchHold — Homebrew tap

```sh
brew install --cask rupam-shil/notchhold/notchhold
```

NotchHold is a macOS utility that turns the notch into a temporary shelf for
files. Drag something onto it, switch apps, Spaces or displays, and drag it
back out. See https://notchhold.app.

## Gatekeeper

NotchHold is signed but not notarized by Apple, so macOS quarantines it like
any other app downloaded from the internet. Homebrew applies that quarantine
flag by default, so the first launch is blocked. Either:

```sh
brew install --cask --no-quarantine rupam-shil/notchhold/notchhold
```

or install normally and allow it once in **System Settings → Privacy &
Security → Open Anyway**. See https://notchhold.app/install.
