cask "spotlight-code" do
  version "1.0.0"
  sha256 "bab29e26fff15b6ba191539ce6f574513817e010b099e3bd43bf05384e767dad"

  url "https://github.com/BadryansahBangsawan/spotlight-code/releases/download/v#{version}/SpotlightCode.app.zip"
  name "Spotlight Code"
  desc "Index local source folders and search them from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/spotlight-code"

  depends_on macos: ">= :sonoma"

  app "SpotlightCode.app"

  uninstall quit: "engineer.badry.spotlightcode"

  caveats <<~EOS
    Spotlight Code is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/SpotlightCode.app
  EOS
end
