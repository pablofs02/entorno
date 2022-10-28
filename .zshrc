# ~/.zshrc

alias -g lqh='cat ~/.quehaceres.txt'
alias -g mqh='nv ~/.quehaceres.txt'
alias -g lcm='cat ~/.comandos.txt'
alias -g mcm='nv ~/.comandos.txt'
alias -g lpr='cat ~/.programas.txt'
alias -g mpr='nv ~/.programas.txt'

alias -g nv='nvim'
alias -g ls='lsd --config-file ~/.config/lsd/config.yaml 2>/dev/null'
alias -g tree='lsd --tree'
alias -g cat='bat --style numbers'
alias -g grep='grep --color=auto'
alias -g cp="cp -i"
alias -g mv='mv -i'
alias -g df='df -h'
alias -g free='free -h'
alias -g psmem='ps auxf | sort -nr -k 4 | head -5'
alias -g pscpu='ps auxf | sort -nr -k 3 | head -5'

alias -g instala='sudo pacman -S'
alias -g busca='pacman -Ss'
alias -g quita='sudo pacman -Rcdnsu'
alias -g lista='pacman -Q'
alias -g checa='pacman -Q | grep'
alias -g mejora='sudo pacman -Syyu'
alias -g limpia='sudo pacman -Rsn $(pacman -Qdtq) || pacman -Scc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.config
_comp_options+=(globdots)

export PATH=$PATH:./:~/.local/bin/
export XDG_CONFIG_DIR=~/.config
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export KEYTIMEOUT=1
setopt autocd cdable_vars chase_dots chase_links promptsubst interactive_comments 

bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
zle_highlight=('paste:none')

tabs 4

SAVEHIST=1000
HISTSIZE=1000
HISTFILE=~/.historial

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '(%m%u%c%b) '
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='*'
	fi
}
PS1='%B%F{4}%1~ %F{1}${vcs_info_msg_0_}%F{2}%(!.€.$)%b%f '
