cask "focus-build" do
  version "1.0.0"
  sha256 "a7f8c1cf79cb49e541b2fd8e90a4b287262098406c6994eb8cdc938c883e6200"

  url "https://github.com/BadryansahBangsawan/focus-build/releases/download/v#{version}/FocusBuild.app.zip"
  name "Focus Build"
  desc "Run test and build presets from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/focus-build"

  depends_on macos: ">= :sonoma"

  app "FocusBuild.app"

  uninstall quit: "engineer.badry.focusbuild"

  caveats <<~EOS
    Focus Build is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/FocusBuild.app
  EOS
end
