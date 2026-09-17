# BadryansahBangsawan macOS menu extras

```bash
brew tap BadryansahBangsawan/mac-menu-apps
brew install --cask homoglyph-inspector
```

Install every extra:

```bash
brew tap BadryansahBangsawan/mac-menu-apps
brew install --cask hotkey-detective localhost-switchboard repo-hud frontmost-copilot layout-presets simulator-drop capture-to-issue spotlight-code focus-build devfs homoglyph-inspector
```

Apps are menu extras (no Dock icon). Builds are ad-hoc signed; if Gatekeeper blocks: `xattr -cr /Applications/<App>.app`.

| Cask | App |
|---|---|
| hotkey-detective | Hotkey Detective |
| localhost-switchboard | Localhost Switchboard |
| repo-hud | Repo HUD |
| frontmost-copilot | Frontmost Copilot |
| layout-presets | Layout Presets |
| simulator-drop | Simulator Drop |
| capture-to-issue | Capture to Issue |
| spotlight-code | Spotlight Code |
| focus-build | Focus Build |
| devfs | DevFS |
| homoglyph-inspector | Homoglyph Inspector |

Requires macOS 14+ (Sonoma or newer). Not submitted to `homebrew/cask`; install only from this tap.

Tap name is `BadryansahBangsawan/mac-menu-apps` (repo folder `homebrew-mac-menu-apps`). After `brew tap`, use `brew install --cask <cask>` with a name from the table above.

To pick up a newer build from this tap: `brew update && brew upgrade --cask <cask>`.

To remove one later: `brew uninstall --cask <cask>` (keeps the tap; use `brew untap BadryansahBangsawan/mac-menu-apps` only if you want the tap gone too).

To see which casks this tap currently exposes after tapping: `brew search --casks --tap=BadryansahBangsawan/mac-menu-apps` (or skim the table above).

To list which of these casks are already installed on this Mac: `brew list --cask | grep -E 'hotkey-detective|localhost-switchboard|repo-hud|frontmost-copilot|layout-presets|simulator-drop|capture-to-issue|spotlight-code|focus-build|devfs|homoglyph-inspector'`.
