cask "devfs" do
  version "1.0.0"
  sha256 "6f5231805f8ba1eacfd853346ba97208405738f9a9c08a2362e9e11d2f0e002c"

  url "https://github.com/BadryansahBangsawan/devfs/releases/download/v#{version}/DevFS.app.zip"
  name "DevFS"
  desc "Sync a remote directory over SSH rsync from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/devfs"

  depends_on macos: ">= :sonoma"

  app "DevFS.app"

  uninstall quit: "engineer.badry.devfs"

  caveats <<~EOS
    DevFS is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/DevFS.app
  EOS
end
