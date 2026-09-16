cask "capture-to-issue" do
  version "1.0.0"
  sha256 "8544095bf3ebabd346206821f5d83765c20a5fe5a1d15cdad2568815887172e9"

  url "https://github.com/BadryansahBangsawan/capture-to-issue/releases/download/v#{version}/CaptureToIssue.app.zip"
  name "Capture to Issue"
  desc "Capture a screen region and file a GitHub issue with gh"
  homepage "https://github.com/BadryansahBangsawan/capture-to-issue"

  depends_on macos: ">= :sonoma"

  app "CaptureToIssue.app"

  uninstall quit: "engineer.badry.capturetoissue"

  caveats <<~EOS
    Capture to Issue is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/CaptureToIssue.app
  EOS
end
