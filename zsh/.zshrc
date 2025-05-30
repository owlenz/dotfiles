export PATH=$HOME/bin:/usr/local/bin:$PATH

## handled by nix
# export ZSH="$HOME/.oh-my-zsh"
# plugins=( 
#     zsh-syntax-highlighting
#     tmux
#     git
#     zsh-autosuggestions
# )
# source $ZSH/oh-my-zsh.sh

## PROMPT ##
export PS1="%F{#FD43B7}%n%f@%F{cyan}%m%f-> %1~ $ " ## BASH-like prompt

SAVEHIST=1000
HISTFILE=~/.zsh_history

# Vi Mode
bindkey -v

## Aliases ##
alias passC="cat ~/Documents/xdd/pass | wl-copy"
if [[ "$(loginctl show-session $(awk '/tty/ {print $1}' <(loginctl)) -p Type | awk -F= '{print $2}')" == "wayland" ]]; then
	alias passC="cat ~/Documents/xdd/pass | wl-copy"
fi

### Config Aliases ###
alias kittyC="nvim ~/.config/kitty/kitty.conf"
alias hyprC="nvim ~/.config/hypr/hyprland.conf"
alias tmuxC="nvim ~/.tmux.conf"
alias barC="cd ~/.config/waybar/ ; nvim"
alias nvimC="cd ~/.config/nvim/ ; nvim"
alias vimC="cd ~/.config/nvim/ ; nvim"
alias i3C="cd ~/.config/i3/ ; nvim"
alias zshC="nvim ~/.zshrc"
alias starC="nvim ~/.config/starship/starship.toml"


### QOL aliases ###
alias cls='printf "\033c"'
alias ..="cd .."
alias pac="sudo pacman"
alias vim="nvim"
alias nivm="nvim"
alias notes="cd ~/Documents/notes; nvim"
alias pick="hyprpicker | tail -c +2 | head -c -1 |wl-copy" 
alias xpick="xcolor | xclip -sel clip" 

if [[ $+commands[eza] ]]; then
	alias ls="eza --icons=always --no-time --group-directories-first --no-user"
	alias ll="eza -blF --icons"
	alias tree="eza --tree --icons"
fi

if [[ $+commands[kitten] ]]; then
	alias icat="kitten icat"
	alias themes="kitten themes"
fi

if [[ $+commands[nix] ]]; then
    alias nrf="sudo nixos-rebuild switch --flake ~/dotfiles"
    alias nr="sudo nixos-rebuild switch"
    alias nsp="nix search nixpkgs"
    alias nsp="nix search"
    alias nlp="nix-store --query --requisites /run/current-system | cut -d- -f2- | sort -u"
fi


export PKG_CONFIG_PATH=/usr/lib/pkgconfig:/usr/share/pkgconfig:/lib/pkgconfig:$PKG_CONFIG_PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
# . "$HOME/.cargo/env"

eval "$(fzf --zsh)"
# eval "$(ssh-agent -s)"

# bun completions
[ -s "/home/saif/.bun/_bun" ] && source "/home/saif/.bun/_bun"
export EDITOR='emacs'

## android studio ##
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/platform-tools

## arm-linux cross-compile
export PATH=$HOME/x-tools/arm-balls-linux-musleabihf/bin:$PATH
export ARCH=arm
export CROSS_COMPILE=arm-linux-

export PATH=$HOME/.config/emacs/bin:$PATH
