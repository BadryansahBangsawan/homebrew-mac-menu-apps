cask "hotkey-detective" do
  version "1.0.0"
  sha256 "8481f3bcca1811ed08c19897ad829de12cc296614185173c7a59f9e76550dbba"

  url "https://github.com/BadryansahBangsawan/hotkey-detective/releases/download/v#{version}/HotkeyDetective.app.zip"
  name "Hotkey Detective"
  desc "Find colliding keyboard shortcuts from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/hotkey-detective"

  depends_on macos: ">= :sonoma"

  app "HotkeyDetective.app"

  uninstall quit: "engineer.badry.hotkeydetective"

  caveats <<~EOS
    Hotkey Detective is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/HotkeyDetective.app
  EOS
end
