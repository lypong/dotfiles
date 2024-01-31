# lypong's dotfiles
These dotfiles were written to suit my everyday tasks. They were thought to be used with my m1 mac running fedora asahi remix.
## dependencies
Some dotfiles rely on specific programs (For instance, hyprland executes commands to change brightness)
* hyprland (Could only run the version provided by fedora)
* alacritty (Could only run the version provided by fedora)
* fish (fedora version is automatically detected by chsh)
* nix (single-user installation : https://nixos.org/download)
* rustup (https://rustup.rs/)
* acpilight (requires adding udev rule and putting your user in video group : https://gitlab.com/wavexx/acpilight)
* nvim (get config here : https://astronvim.com/)
* fuzzel
* waybar
* hyprpaper
* appimaged (https://github.com/probonopd/go-appimage/tree/master/src/appimaged)
## Tinkering
### Change packagekit permissions
By default Fedora lets users that belong to wheel group install and remove packages without password.
This could lead to security breaches or unintentional system break.
For this reason we'll comment the contents of `/usr/share/polkit-1/rules.d/org.freedesktop.packagekit.rules` out.
### Edit acpilight udev rule
The udev snippet for keyboard backlight that can be found on acpilight's repo won't apply for m1 with asahi.
Please replace  `KERNEL=="*::kbd_backlight"` with `KERNEL=="*kbd_backlight"`
## Remy
Let me introduce remy. Remy is a simple wrapper around nix utilities to let the user easily install packages without root privileges.
## Sirup
Since root doesn't have the binaries installed from nix in its $PATH, sirup is a shell function that lets you run these programs as root.
