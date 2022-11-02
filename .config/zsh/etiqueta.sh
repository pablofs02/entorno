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
