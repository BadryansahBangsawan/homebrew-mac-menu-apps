<div align="center">

# homebrew-mac-menu-apps

**Tap twelve LSUIElement extras. `brew tap BadryansahBangsawan/mac-menu-apps` then `brew install --cask <token>`.**

Not submitted to `homebrew/cask`. Ad-hoc signed (`codesign -s -`). macOS 14+ (`depends_on macos: ">= :sonoma"`).

<br/>

| | |
|---|---|
| Tap | `BadryansahBangsawan/mac-menu-apps` |
| Repo | `homebrew-mac-menu-apps` |
| Formulas | 12 files under `Casks/` |
| Artifact | each extra’s GitHub Release `*.app.zip` |

</div>

---

## What you get

| Piece | Behavior |
|---|---|
| **Tap** | `brew tap BadryansahBangsawan/mac-menu-apps` (GitHub `BadryansahBangsawan/homebrew-mac-menu-apps`). |
| **Trust** | `brew trust BadryansahBangsawan/mac-menu-apps` on Homebrew 6, or `brew install --cask` refuses the tap. |
| **Cask** | One token per extra. Zip from that extra’s `v#{version}` Release. |
| **Caveat** | Each formula prints `xattr -cr /Applications/<Product>.app` for the ad-hoc signature. |
| **Not in this tap** | header-peek, token-peek, card-preview, node-hud, contrast-drop (no `Casks/` file). |

The extras themselves are `LSUIElement`. Click the status item on the **right** of the menu bar. If the bar is full, they sit behind Control Center’s overflow chevron **«**. Double-clicking in Finder/Launchpad does not open a document window. That is expected.

---

## Install

```bash
brew tap BadryansahBangsawan/mac-menu-apps
brew trust BadryansahBangsawan/mac-menu-apps
```

One extra:

```bash
brew install --cask homoglyph-inspector
```

Every extra in this tap:

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

Still blocked: System Settings → Privacy & Security → Open Anyway. `spctl --assess` is `rejected` even when the process runs — that is the ad-hoc signature, not proof it failed.

Do not launch a `dist/` build next to the copy in `/Applications` (same bundle IDs fight for the extra).

---

## Usage

| Cask | App | Product | Bundle ID | Status item |
|---|---|---|---|---|
| hotkey-detective | [Hotkey Detective](https://github.com/BadryansahBangsawan/hotkey-detective) | `HotkeyDetective` | `engineer.badry.hotkeydetective` | `keyboard` |
| localhost-switchboard | [Localhost Switchboard](https://github.com/BadryansahBangsawan/localhost-switchboard) | `LocalhostSwitchboard` | `engineer.badry.localhostswitchboard` | `network` |
| repo-hud | [Repo HUD](https://github.com/BadryansahBangsawan/repo-hud) | `RepoHUD` | `engineer.badry.repohud` | `arrow.triangle.branch` |
| frontmost-copilot | [Frontmost Copilot](https://github.com/BadryansahBangsawan/frontmost-copilot) | `FrontmostCopilot` | `engineer.badry.frontmostcopilot` | `sparkles` |
| layout-presets | [Layout Presets](https://github.com/BadryansahBangsawan/layout-presets) | `LayoutPresets` | `engineer.badry.layoutpresets` | `rectangle.3.group` |
| simulator-drop | [Simulator Drop](https://github.com/BadryansahBangsawan/simulator-drop) | `SimulatorDrop` | `engineer.badry.simulatordrop` | `iphone` |
| capture-to-issue | [Capture to Issue](https://github.com/BadryansahBangsawan/capture-to-issue) | `CaptureToIssue` | `engineer.badry.capturetoissue` | `camera.viewfinder` |
| spotlight-code | [Spotlight Code](https://github.com/BadryansahBangsawan/spotlight-code) | `SpotlightCode` | `engineer.badry.spotlightcode` | `magnifyingglass` |
| focus-build | [Focus Build](https://github.com/BadryansahBangsawan/focus-build) | `FocusBuild` | `engineer.badry.focusbuild` | `hammer` |
| devfs | [DevFS](https://github.com/BadryansahBangsawan/devfs) | `DevFS` | `engineer.badry.devfs` | `externaldrive.connected.to.line.below` |
| homoglyph-inspector | [Homoglyph Inspector](https://github.com/BadryansahBangsawan/homoglyph-inspector) | `HomoglyphInspector` | `engineer.badry.homoglyphinspector` | `text.viewfinder` |
| paste-shot | [Paste Shot](https://github.com/BadryansahBangsawan/paste-shot) | `PasteShot` | `engineer.badry.pasteshot` | `doc.on.clipboard` |

Each extra opens an opaque ~360×420 pt panel (Paste Shot is a Control Center–style On/Off card). Settings is a control in the panel.

```bash
brew search --casks --tap=BadryansahBangsawan/mac-menu-apps
brew info --cask <cask>
brew outdated --cask
brew update && brew upgrade --cask <cask>
brew reinstall --cask <cask>
```

---

## Permissions

The tap itself has no TCC. Several extras do. Builds are ad-hoc signed: TCC is bound to a **cdhash**. Reinstall/rebuild is a new identity. System Settings can still show the old row as enabled.

If the extra still nags after the switch is on: toggle **off then on**, then **Relaunch** in the panel. macOS does not grant those rights to a process that is already running.

| Extra | TCC |
|---|---|
| Hotkey Detective | Accessibility + Input Monitoring |
| Frontmost Copilot | Accessibility |
| Layout Presets | Accessibility |
| Capture to Issue | Screen Recording |
| Homoglyph Inspector | Accessibility optional (**Inspect selection** only) |
| Others in this tap | no Accessibility / Screen Recording |

---

## Data

This repo is formulas only. Each extra’s Application Support, UserDefaults, and Keychain live in that extra’s README.

`brew uninstall --cask` removes `/Applications/<Product>.app`. It does not delete `~/Library/Application Support/…`, Keychain API keys, or TCC entries.

---

## Uninstall

```bash
brew uninstall --cask hotkey-detective localhost-switchboard repo-hud \
  frontmost-copilot layout-presets simulator-drop capture-to-issue \
  spotlight-code focus-build devfs homoglyph-inspector paste-shot
```

Keep the tap, or:

```bash
brew untap BadryansahBangsawan/mac-menu-apps
```

Turn off Open at Login in each extra’s Settings before uninstall if you enabled it.

---

## Troubleshooting

| What you see | What to do |
|---|---|
| Finder/Launchpad “does nothing” | Accessory extra. Click the **right** status item. |
| Extra missing | Overflow **«**, or `open /Applications/<Product>.app`. |
| “Damaged” | Quarantine + ad-hoc sign. `xattr -cr /Applications/<Product>.app`. |
| Tap refused | `brew trust BadryansahBangsawan/mac-menu-apps` |
| Permission switch on, extra still asks | New cdhash. Toggle off/on, **Relaunch**. |
| header-peek / token-peek / … missing | Those five are not in this tap. Clone the extra repo. |

---

## Build from source

This tap does not compile apps. Clone an extra repo and run that extra’s `package-app.sh`. To change a formula:

```bash
git clone https://github.com/BadryansahBangsawan/homebrew-mac-menu-apps.git
cd homebrew-mac-menu-apps
```

Edit `Casks/<token>.rb` (`version`, `sha256`, `url`).

---

<div align="center">

[MIT](LICENSE)

</div>
