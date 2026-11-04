# dotfiles

My Neovim and Ghostty setup (macOS).

- `nvim/` — Neovim ≥ 0.11 config on lazy.nvim. Ghostty-transparent, Helix-flavoured, VS Code-inspired: LSP (clangd, pyright, lua_ls), blink.cmp, Telescope, Treesitter, minimap, F5 compile-and-run for C/C++.
- `ghostty/config` — translucent, blurred window, quick terminal on `cmd+``, JetBrains Mono.

## Install

```sh
git clone https://github.com/ZahinTapadar/dotfiles ~/dotfiles
ln -s ~/dotfiles/nvim ~/.config/nvim
mkdir -p ~/.config/ghostty && ln -s ~/dotfiles/ghostty/config ~/.config/ghostty/config
```

Back up any existing `~/.config/nvim` first. Plugins install on first launch of `nvim`.
