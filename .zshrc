setopt autocd cdable_vars chase_dots promptsubst rmstarsilent interactive_comments 

bindkey -v
tabs 4

# Aliases
alias nf=neofetch
alias lqh="bat ~/Documentos/Información/quehaceres"
alias mqh="nv ~/Documentos/Información/quehaceres"

alias nv='nvim'
alias l='lsd -l 2>/dev/null'
alias lt='lsd -lA 2>/dev/null'
alias ls='lsd 2>/dev/null'
alias lst='lsd -A 2>/dev/null'
alias tree='lsd --tree 2>/dev/null'
alias bat='bat --style numbers --color always --theme base16'
alias grep='grep --color=auto'
alias cp="cp -i"
alias mv='mv -i'
alias df='df -h'
alias free='free -h'
alias psmem='ps auxf | sort -nr -k 4 | head -5'
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

alias pmi='sudo pacman -S'
alias pmb='pacman -Ss'
alias pmd='sudo pacman -Rcdnsu'
alias pml='pacman -Q'
alias pmo='pacman -Q | grep'
alias pma='sudo pacman -Syyu'
alias pmm='sudo pacman -Rsn $(pacman -Qdtq) || pacman -Scc'

alias apaga='shutdown -f now'
alias reini='shutdown -r now'

# Exportaciones
export PATH=$PATH:~/.local/bin/:./
export XDG_CONFIG_DIR=~/.config
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export KEYTIMEOUT=1

# Historial
SAVEHIST=1000
HISTSIZE=1000
HISTFILE=~/.cache/historial

# Coloreado
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
zle_highlight=('paste:none')
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Etiqueta
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '(%m%u%c%b) '
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
+vi-git-untracked(){
	if [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) == 'true' ]] && git status --porcelain | grep '??' &> /dev/null ; then
		hook_com[staged]+='*'
	fi
}
PS1='%B%F{4}%1~ %F{1}${vcs_info_msg_0_}%F{2}%(!.€.$)%b%f '
