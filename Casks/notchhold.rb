cask "notchhold" do
  version "1.0.1"
  sha256 "a4543b2b0cb51ba9c66deae35d75915e4aa5ede0c0bc2378b5726641b8777344"

  # Served from the site's CDN. GitHub's release-asset host stalled for 45-75 s
  # per connection on some routes; notchhold.app delivers the same bytes in
  # under a second. Versioned filename so the checksum stays meaningful.
  url "https://notchhold.app/releases/NotchHold-#{version}.dmg",
      verified: "notchhold.app/"
  name "NotchHold"
  desc "Shelf that hangs from the notch for holding files between apps and Spaces"
  homepage "https://notchhold.app/"

  # Versions are still cut as GitHub releases, so that remains the authority
  # for "what is newest" even though the bytes come from the site.
  livecheck do
    url "https://github.com/Rupam-Shil/notchhold-releases/releases/latest"
    strategy :github_latest
  end

  # Sparkle updates itself in place, so Homebrew should not fight it.
  auto_updates true
  depends_on macos: :ventura

  app "NotchHold.app"

  uninstall quit: "app.notchhold"

  zap trash: [
    "~/Library/Preferences/app.notchhold.plist",
    "~/Library/Caches/app.notchhold",
    "~/Library/HTTPStorages/app.notchhold",
    "~/Library/Application Support/Caches/app.notchhold",
  ]
end
