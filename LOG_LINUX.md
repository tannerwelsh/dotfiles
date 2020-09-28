# Log: Linux

_A place to log notes on configuring Linux / Ubuntu_

## Package Managers

- `apt`: main Linux package manager for Debian/Ubuntu (Pop! OS is built on Ubuntu)
- `Homebrew` / `Linuxbrew`: Linux port of the Mac-based homebrew, not as extensive of a library however
- `Pop!_Shop`: Pop! OS built-in app store (mostly for GUI tools)
- `Snap`: another app store / package manager tool with a nifty GUI

## Keyboard / Mouse Configurations

Install and use `GNOME Tweaks` app (available via Pop! Shop) to make some general modifications to keyboard (e.g. mapping Caps Lock to Control).

For Logitech keyboard/mouse, can use `xbindkeys` and `xautomation` package to re-map key/mouse button presses to system commands. More info: https://support.system76.com/articles/custom-mouse-buttons/

## Running Programs on Start (Autostarting)

There are various points in the boot process to hook into for starting a particular program.

For starting applications when the desktop environment (GNOME for Pop! OS) loads, there are two GUI programs (at least) to use:
- Startup Application Preferences (recommended for Pop! OS)
- Use GNOME Tweaks app > Startup Applications

See  https://wiki.archlinux.org/index.php/Autostarting for more info.

