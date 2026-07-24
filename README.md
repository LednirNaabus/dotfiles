# arch dotfiles

- **Neovim**
- **Tmux**

Managed with **GNU Stow** for modular, per-tool symlinking into `$HOME`.

## Structure

```
dotfiles/
├── nvim/
│   └── .config/nvim/
│       ├── init.lua
│       ├── lua/
│       └── lazy-lock.json
├── tmux/
│   └── .config/tmux/
│       └── tmux.conf
└── fish/
    └── .config/fish/
        ├── config.fish
        └── functions/
```

## Requirements

- `git`
- `stow`

```bash
sudo pacman -S stow git
```

## Use on new machine

- Clone the repo:

```bash
git clone git@github.com:LednirNaabus/dotfiles.git ~/dotfiles
```

- Backup first (if applicable)

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.config/tmux ~/.config/tmux.bak
mv ~/.config/fish ~/.config/fish.bak
```

- Stow everything

```bash
cd ~/dotfiles
stow nvim tmux fish
```

- Verify

```bash
readlink ~/.config/nvim
```

## Removing a config

```bash
cd ~/dotfiles
stow -D tmux
```

## Re-stowing after changes

```bash
stow -R nvim
```
