cask "simulator-drop" do
  version "1.0.0"
  sha256 "1a891dfc6f4de36496c91b4c13ac4cf5956e79e51288b3e564d5faafb3bc234a"

  url "https://github.com/BadryansahBangsawan/simulator-drop/releases/download/v#{version}/SimulatorDrop.app.zip"
  name "Simulator Drop"
  desc "Push files and URLs onto a booted iOS Simulator from the menu bar"
  homepage "https://github.com/BadryansahBangsawan/simulator-drop"

  depends_on macos: ">= :sonoma"

  app "SimulatorDrop.app"

  uninstall quit: "engineer.badry.simulatordrop"

  caveats <<~EOS
    Simulator Drop is ad-hoc signed (no Apple Developer ID).
    If macOS blocks it or says it is damaged:
      xattr -cr /Applications/SimulatorDrop.app
  EOS
end
