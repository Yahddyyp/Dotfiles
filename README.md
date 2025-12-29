# MacOS Dotfiles

[![Shell](https://img.shields.io/badge/Shell-81.4%25-brightgreen?logo=shell)](https://github.com/Yahddyyp/Dotfiles/search?l=shell)
[![Lua](https://img.shields.io/badge/Lua-7.8%25-blue?logo=lua)](https://github.com/Yahddyyp/Dotfiles/search?l=lua)
[![GLSL](https://img.shields.io/badge/GLSL-10.8%25-purple)](https://github.com/Yahddyyp/Dotfiles/search?l=glsl)
[![macOS](https://img.shields.io/badge/macOS-Tahoe-orange?logo=apple)](https://www.apple.com/macos/)

Custom zsh, Neovim, and shader configurations for macOS Tahoe.

## Contents
- Dependencies
- Installation
  
## Dependencies
**Core Packages:**<br>
brew install zsh neovim git ripgrep fd fzf<br>
brew install –cask font-fira-code-nerd-font<br>
brew install yabai skhd kitty lazygit

**Xcode Command Line Tools (Recommended, not required):**<br>
xcode-select –install

## Installation
curl -L https://github.com/Yahddyyp/Dotfiles/raw/main/install.sh | zsh


install.sh handles everything:
1. Clones the full repo to $HOME/.dotfiles
2. Installs Homebrew if missing
3. Installs all dependencies above
4. Creates symlinks for all dotfiles
5. Sets zsh as default shell
6. Downloads required fonts

**After install:**
source ~/.zshrc
