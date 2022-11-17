setopt autocd cdable_vars chase_dots promptsubst rmstarsilent interactive_comments 

SAVEHIST=1000
HISTSIZE=1000
HISTFILE=~/.cache/historial

tabs 4

alias ¿=vrms
alias nf=neofetch

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
zle_highlight=('paste:none')
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.cache

source ~/.config/zsh/exportaciones.sh
source ~/.config/zsh/aliases.sh
source ~/.config/zsh/atajos.sh
source ~/.config/zsh/etiqueta.sh
