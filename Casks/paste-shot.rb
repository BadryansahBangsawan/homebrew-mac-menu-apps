cask "paste-shot" do
  version "1.0.3"
  sha256 "3d1925b64f3bb4f561d355ac489048bcb7d35fbe68bfa26b16d842be19fe3c07"

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
