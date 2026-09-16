cask "localhost-switchboard" do
  version "1.0.0"
  sha256 "3578fc8c64b0a4e9fd4faae74f7de86f5564fb1f23d64a599cce765b86f7bdb8"

  url "https://github.com/BadryansahBangsawan/localhost-switchboard/releases/download/v#{version}/LocalhostSwitchboard.app.zip"
  name "Localhost Switchboard"
  desc "See localhost listeners and open or kill them from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/localhost-switchboard"

  depends_on macos: ">= :sonoma"

  app "LocalhostSwitchboard.app"

  uninstall quit: "engineer.badry.localhostswitchboard"

  caveats <<~EOS
    Localhost Switchboard is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/LocalhostSwitchboard.app
  EOS
end
