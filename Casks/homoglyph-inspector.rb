cask "homoglyph-inspector" do
  version "1.0.0"
  sha256 "01049541f06f1a73f505fefc709682b93f1eeb8b8f323507eae75a9a5bc82444"

  url "https://github.com/BadryansahBangsawan/homoglyph-inspector/releases/download/v#{version}/HomoglyphInspector.app.zip"
  name "Homoglyph Inspector"
  desc "Inspect clipboard and selections for lookalike and hidden characters"
  homepage "https://github.com/BadryansahBangsawan/homoglyph-inspector"

  depends_on macos: ">= :sonoma"

  app "HomoglyphInspector.app"

  uninstall quit: "engineer.badry.homoglyphinspector"

  caveats <<~EOS
    Homoglyph Inspector is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/HomoglyphInspector.app
  EOS
end
