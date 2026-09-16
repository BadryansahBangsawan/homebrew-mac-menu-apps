cask "frontmost-copilot" do
  version "1.0.0"
  sha256 "b46f2beaabc61d4ba090336cbe9e4b307edbe1e0ccd2bb00a16b2ec62acab722"

  url "https://github.com/BadryansahBangsawan/frontmost-copilot/releases/download/v#{version}/FrontmostCopilot.app.zip"
  name "Frontmost Copilot"
  desc "Send frontmost selection to an OpenAI-compatible API from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/frontmost-copilot"

  depends_on macos: ">= :sonoma"

  app "FrontmostCopilot.app"

  uninstall quit: "engineer.badry.frontmostcopilot"

  caveats <<~EOS
    Frontmost Copilot is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/FrontmostCopilot.app
  EOS
end
