alias -g lqh="bat ~/Documentos/Información/quehaceres"
alias -g mqh="nv ~/Documentos/Información/quehaceres"

alias -g nv='nvim'
alias -g l='lsd -l 2>/dev/null'
alias -g lt='lsd -lA 2>/dev/null'
alias -g ls='lsd 2>/dev/null'
alias -g lst='lsd -A 2>/dev/null'
alias -g tree='lsd --tree 2>/dev/null'
alias -g bat='bat --style numbers --color always --theme base16'
alias -g grep='grep --color=auto'
alias -g cp="cp -i"
alias -g mv='mv -i'
alias -g df='df -h'
alias -g free='free -h'
alias -g psmem='ps auxf | sort -nr -k 4 | head -5'
alias -g pscpu='ps auxf | sort -nr -k 3 | head -5'

alias -g insta='sudo pacman -S'
alias -g busca='pacman -Ss'
alias -g quita='sudo pacman -Rcdnsu'
alias -g lista='pacman -Q'
alias -g checa='pacman -Q | grep'
alias -g mejor='sudo pacman -Syyu'
alias -g limpia='sudo pacman -Rsn $(pacman -Qdtq) || pacman -Scc'

alias -g apaga='shutdown -f now'
alias -g reini='reboot -f'
