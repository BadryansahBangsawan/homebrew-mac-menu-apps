cask "paste-shot" do
  version "1.0.5"
  sha256 "40e30f6b043e6d5e56fd82aac11ef74a958cc58293c62ba89244fa2f6b5c89d9"

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
