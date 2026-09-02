cask "notchhold" do
  version "1.0.0"
  sha256 "6254a1df89476872149803181921ec345df276db00caa6e02749a8f368182976"

  # Versioned, not the "latest" alias: a moving URL would break checksum
  # verification on every release.
  url "https://github.com/Rupam-Shil/notchhold-releases/releases/download/v#{version}/NotchHold-#{version}.dmg",
      verified: "github.com/Rupam-Shil/notchhold-releases/"
  name "NotchHold"
  desc "Shelf that hangs from the notch for holding files between apps and Spaces"
  homepage "https://notchhold.app/"

  livecheck do
    url :url
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
