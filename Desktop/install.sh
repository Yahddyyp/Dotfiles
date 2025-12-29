#!/bin/zsh

# 1. Bare repo setup
git clone --bare https://github.com/Yahddyyp/Dotfiles.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config status.showUntrackedFiles no

# 2. Homebrew + Dependencies
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>$HOME/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# 3. Core packages
brew install koekeishiya/formulae/yabai koekeishiya/formulae/skhd neofetch neovim lazygit spicetify-cli font-fira-code-nerd-font
brew install --cask raycast ghostty iterm2

# 4. Oh My Zsh + p10k
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 5. Services (needs password)
sudo brew services start yabai
sudo brew services start skhd

# 6. Reload shell
exec zsh -l
