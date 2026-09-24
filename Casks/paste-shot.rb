cask "paste-shot" do
  version "1.0.10"
  sha256 "dcbd2aa0e68da63ae053a5267c9d42666e4637973f0d3e2b641214d4a1dda054"

  url "https://github.com/BadryansahBangsawan/paste-shot/releases/download/v#{version}/PasteShot.app.zip"
  name "Paste Shot"
  desc "Copy each macOS screenshot to the clipboard for paste"
  homepage "https://github.com/BadryansahBangsawan/paste-shot"

  depends_on macos: :sonoma

  app "PasteShot.app"

  uninstall quit: "engineer.badry.pasteshot"

  caveats <<~EOS
    Paste Shot is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/PasteShot.app
  EOS
end
