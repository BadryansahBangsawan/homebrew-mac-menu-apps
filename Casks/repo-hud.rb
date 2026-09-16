cask "repo-hud" do
  version "1.0.0"
  sha256 "5becd9d3fcab933683f775fa58ae668383c97be6d40fd49f34e8e0da60c6c3e9"

  url "https://github.com/BadryansahBangsawan/repo-hud/releases/download/v#{version}/RepoHUD.app.zip"
  name "Repo HUD"
  desc "Live HUD of local git repos from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/repo-hud"

  depends_on macos: ">= :sonoma"

  app "RepoHUD.app"

  uninstall quit: "engineer.badry.repohud"

  caveats <<~EOS
    Repo HUD is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/RepoHUD.app
  EOS
end
