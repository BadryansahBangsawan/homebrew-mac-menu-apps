cask "paste-shot" do
  version "1.0.11"
  sha256 "d04f436a2f050e69e170096dcd9e0ca44a48623bf7fbb972e13b213f18de8be6"

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
