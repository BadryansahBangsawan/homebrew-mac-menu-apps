# BadryansahBangsawan macOS menu extras

Twelve **LSUIElement** extras. No Dock icon. Click the status item on the **right** of the menu bar. If the bar is full, they sit behind Control Center’s overflow chevron **«**. Double-clicking in Finder/Launchpad does not open a document window.

Requires macOS 14+. Ad-hoc signed (`codesign -s -`). Not submitted to `homebrew/cask`.

## Install

```bash
brew tap BadryansahBangsawan/mac-menu-apps
brew trust BadryansahBangsawan/mac-menu-apps
```

`brew trust` is required on Homebrew 6 or `brew info --cask` / `brew install --cask` refuse the tap.

One extra:

```bash
brew install --cask homoglyph-inspector
```

Every extra:

```bash
brew install --cask \
  hotkey-detective localhost-switchboard repo-hud frontmost-copilot \
  layout-presets simulator-drop capture-to-issue spotlight-code \
  focus-build devfs homoglyph-inspector paste-shot
```

If Gatekeeper blocks or says damaged:

```bash
xattr -cr /Applications/<Product>.app
open /Applications/<Product>.app
```

If still blocked: System Settings → Privacy & Security → Open Anyway. `spctl --assess` is `rejected` even when the process runs — that is the ad-hoc signature, not proof it failed.

Do not launch a `dist/` build next to the copy in `/Applications` (same bundle IDs fight for the extra).

## Casks

| Cask | App | Product | Bundle ID | Status item |
|---|---|---|---|---|
| hotkey-detective | [Hotkey Detective](https://github.com/BadryansahBangsawan/hotkey-detective) | HotkeyDetective | engineer.badry.hotkeydetective | `keyboard` |
| localhost-switchboard | [Localhost Switchboard](https://github.com/BadryansahBangsawan/localhost-switchboard) | LocalhostSwitchboard | engineer.badry.localhostswitchboard | `network` |
| repo-hud | [Repo HUD](https://github.com/BadryansahBangsawan/repo-hud) | RepoHUD | engineer.badry.repohud | `arrow.triangle.branch` |
| frontmost-copilot | [Frontmost Copilot](https://github.com/BadryansahBangsawan/frontmost-copilot) | FrontmostCopilot | engineer.badry.frontmostcopilot | `sparkles` |
| layout-presets | [Layout Presets](https://github.com/BadryansahBangsawan/layout-presets) | LayoutPresets | engineer.badry.layoutpresets | `rectangle.3.group` |
| simulator-drop | [Simulator Drop](https://github.com/BadryansahBangsawan/simulator-drop) | SimulatorDrop | engineer.badry.simulatordrop | `iphone` |
| capture-to-issue | [Capture to Issue](https://github.com/BadryansahBangsawan/capture-to-issue) | CaptureToIssue | engineer.badry.capturetoissue | `camera.viewfinder` |
| spotlight-code | [Spotlight Code](https://github.com/BadryansahBangsawan/spotlight-code) | SpotlightCode | engineer.badry.spotlightcode | `magnifyingglass` |
| focus-build | [Focus Build](https://github.com/BadryansahBangsawan/focus-build) | FocusBuild | engineer.badry.focusbuild | `hammer` |
| devfs | [DevFS](https://github.com/BadryansahBangsawan/devfs) | DevFS | engineer.badry.devfs | `externaldrive.connected.to.line.below` |
| homoglyph-inspector | [Homoglyph Inspector](https://github.com/BadryansahBangsawan/homoglyph-inspector) | HomoglyphInspector | engineer.badry.homoglyphinspector | `text.viewfinder` |
| paste-shot | [Paste Shot](https://github.com/BadryansahBangsawan/paste-shot) | PasteShot | engineer.badry.pasteshot | `doc.on.clipboard` |

Each extra opens an **opaque ~360×420** panel (not a 10px strip, not a material-bleed window). Settings is a bordered control in the panel.

## Permissions (TCC)

Several extras need Accessibility, Input Monitoring, or Screen Recording. Builds are ad-hoc signed: TCC is bound to a **cdhash**. Reinstall/rebuild is a new identity. System Settings can still show the **old** row as enabled.

If the extra still nags after the switch is on: toggle **off then on**, then **Relaunch** in the panel. macOS does not grant those rights to a process that is already running.

| Extra | TCC |
|---|---|
| Hotkey Detective | Accessibility + Input Monitoring |
| Frontmost Copilot | Accessibility |
| Layout Presets | Accessibility |
| Capture to Issue | Screen Recording |
| Homoglyph Inspector | Accessibility optional (Inspect selection only) |
| Others | no Accessibility / Screen Recording |

Requires macOS 14+ (Sonoma or newer). Not submitted to `homebrew/cask`; install only from this tap.

Tap name is `BadryansahBangsawan/mac-menu-apps` (repo folder `homebrew-mac-menu-apps`). After `brew tap`, use `brew install --cask <cask>` with a name from the table above.

To pick up a newer build from this tap: `brew update && brew upgrade --cask <cask>`.

To remove one later: `brew uninstall --cask <cask>` (keeps the tap; use `brew untap BadryansahBangsawan/mac-menu-apps` only if you want the tap gone too).

To see which casks this tap currently exposes after tapping: `brew search --casks --tap=BadryansahBangsawan/mac-menu-apps` (or skim the table above).

To list which of these casks are already installed on this Mac: `brew list --cask | grep -E 'hotkey-detective|localhost-switchboard|repo-hud|frontmost-copilot|layout-presets|simulator-drop|capture-to-issue|spotlight-code|focus-build|devfs|homoglyph-inspector|paste-shot'`.

To inspect a cask formula (homepage, version, artifacts) before installing: `brew info --cask <cask>`.

To check whether a newer cask build is available without upgrading yet: `brew outdated --cask`.

To reinstall the same cask version (replace a broken app bundle without waiting for a formula bump): `brew reinstall --cask <cask>`.

## Uninstall

```bash
brew uninstall --cask hotkey-detective localhost-switchboard repo-hud \
  frontmost-copilot layout-presets simulator-drop capture-to-issue \
  spotlight-code focus-build devfs homoglyph-inspector paste-shot
```

That removes `/Applications/<Product>.app`. It does **not** delete `~/Library/Application Support/…`, Keychain API keys, or TCC entries. Turn off Open at Login in each extra’s Settings before uninstall if you enabled it.

## Troubleshooting

| What you see | Cause |
|---|---|
| Finder/Launchpad “does nothing” | Accessory extra. Click the **right** status item. |
| Extra missing | Overflow **«**, or not running (`open /Applications/<Product>.app`). |
| “Damaged” | Quarantine + ad-hoc sign. `xattr -cr`. |
| Tap refused | Missing `brew trust BadryansahBangsawan/mac-menu-apps`. |
| Permission switch on, extra still asks | New cdhash. Toggle off/on, Relaunch. |

## License

Each app is MIT. See the app repo.
