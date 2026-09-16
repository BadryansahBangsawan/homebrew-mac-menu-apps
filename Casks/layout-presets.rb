cask "layout-presets" do
  version "1.0.0"
  sha256 "edb62227a018d535ce07988e7a16979c6293af3c3a55aa70c77f3b7418317051"

  url "https://github.com/BadryansahBangsawan/layout-presets/releases/download/v#{version}/LayoutPresets.app.zip"
  name "Layout Presets"
  desc "Save and restore window layouts from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/layout-presets"

  depends_on macos: ">= :sonoma"

  app "LayoutPresets.app"

  uninstall quit: "engineer.badry.layoutpresets"

  caveats <<~EOS
    Layout Presets is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/LayoutPresets.app
  EOS
end
