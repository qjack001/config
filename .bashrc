[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh

###########################################################
# Aliases
###########################################################

## Common Overrides
alias ls='ls -aG'
alias cat='bat --theme=ansi'
alias find='fzf --preview="bat --color=always --theme=ansi --style=changes --line-range=:500 {}" --keep-right --reverse --height="20%"'
alias nano='micro'

## Nice to Haves
alias ..='cd ..'
alias config='micro ~/.bashrc && source ~/.bashrc'
alias help='glow ~/.help.md'
alias edit-help='micro ~/.help.md'
alias wake='caffenate -u -t 86400'
alias recent='cat ~/.bash_history | rg'

## Personal Aliases
alias weather='curl v2.wttr.in/victoria+british+columbia'
alias wttr='weather'
alias wthr='weather'
alias dev='cd ~/Documents/Github'
alias notes='cd ~/Documents/Notes'



eval "$(starship init bash)"
echo "Welcome back. Type 'help' for a list of available commands."
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
