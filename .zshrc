# ZSH 5.8 Autocomment

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Bash-Style Comments

setopt interactivecomments

# Environment Variables

export EDITOR=vim
export BROWSER=firefox

# Aliases

alias sx='startx'
alias ls='ls --color=auto'
alias music='ncmpcpp'
alias ydl='youtube-dl'
alias recv='ffmpeg -f x11grab -i :0.0 -f pulse -i default'
alias reca='ffmpeg -f pulse -i default'
alias setbg='feh --bg-fill'
alias py='python3'

# XBPS Aliases

alias beepi="sudo xbps-install"
alias beepr="sudo xbps-remove"
alias beepq="sudo xbps-query"

# Powerline10k Source

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
