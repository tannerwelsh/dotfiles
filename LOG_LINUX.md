# Log: Linux

_A place to log notes on configuring Linux / Ubuntu_

## Package Managers

- `apt`: main Linux package manager for Debian/Ubuntu (Pop! OS is built on Ubuntu)
- `Homebrew` / `Linuxbrew`: Linux port of the Mac-based homebrew, not as extensive of a library however
- `Pop!_Shop`: Pop! OS built-in app store (mostly for GUI tools)
- `Snap`: another app store / package manager tool with a nifty GUI

## Gnome Themes (OS UI Theming)

Custom themes installed at `/usr/share/themes`.

Example: https://www.pling.com/p/1267246/

## Keyboard / Mouse Configurations

Install and use `GNOME Tweaks` app (available via Pop! Shop) to make some general modifications to keyboard (e.g. mapping Caps Lock to Control).

For Logitech keyboard/mouse, can use `xbindkeys` and `xautomation` package to re-map key/mouse button presses to system commands. More info: https://support.system76.com/articles/custom-mouse-buttons/

Re-mapping keys can be done with `setxkbmap` or `xmodmap` (which is the old way). `xmodmap` is useful for one-off changes. More info: https://utcc.utoronto.ca/~cks/space/blog/unix/XKeyboardRemappingNotes

## Running Programs on Start (Autostarting)

There are various points in the boot process to hook into for starting a particular program.

For starting applications when the desktop environment (GNOME for Pop! OS) loads, there are two GUI programs (at least) to use:
- Startup Application Preferences (recommended for Pop! OS)
- Use GNOME Tweaks app > Startup Applications

See  https://wiki.archlinux.org/index.php/Autostarting for more info.

## SSH Server

Created a couple of wrappers for managing the ssh server:

- ssh-start
- ssh-stop
- ssh-status

To make connections more secure, _only_ allow key-based auth (not password) by changing /etc/ssh/sshd_config:

```
PasswordAuthentication no
```

Any clients which have their public keys listed in ~/.ssh/authorized_keys will be allowed access, but none others.

An added layer of security is provided by the fail2ban package (temporarily blocks IPs with repeated failed password attempts).

Additionally, change the SSH port to obscure thing even a little bit further. This can also be done in /etc/ssh/sshd_config.

Much inspiration for these security steps taken from https://thepcspy.com/read/making-ssh-secure/\#use-key-based-authentication-and-disable-password-authentication

## Non-standard Installs

### Docker

Followed instructions in https://docs.docker.com/engine/install/ubuntu/

### Go Language

https://golang.org/doc/install

Go packages:

- gotop (for sysstats alias): https://github.com/xxxserxxx/gotop/releases => install binary into ~/.dotfiles/bin

### Delta Tool (better diff)

https://github.com/dandavison/delta

### Universal Ctags

https://github.com/universal-ctags/ctags

Install via Snap store

## GPU Drivers

To switch between graphics card drivers, use the `software-properties-gtk` package/command and go to the "Additional Drivers" tab. There you can select which driver to use.
