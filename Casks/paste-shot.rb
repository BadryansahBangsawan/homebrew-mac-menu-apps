cask "paste-shot" do
  version "1.0.8"
  sha256 "c68f0a772228e9a1f5ed58b85a20cf8b20f30c960c34685d8243d7f1686b16a5"

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
