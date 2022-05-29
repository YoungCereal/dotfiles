if [[ "$(uname)" = "Linux" ]]; then
	alias ls='ls --color=auto'
	alias ll='ls --color=auto -alh'
	alias la='ls --color=auto -la'
elif [[ "$(uname)" = "Darwin" ]]; then
	if [[ -x "$(command -v exa)" ]]; then
		alias ls="exa -l -g --icons --git"
		alias ll="exa -la -g --icons --git"
		alias llt="exa -la -g --tree --icons --git"
		alias lltd="llt --ignore-glob 'node_modules|.git|.next|.vscode'"
	else
		alias ls='ls -G'
		alias ll='ls -G -alh'
		alias la='ls -G -la'
	fi
fi

alias grep='grep --color=auto'
alias cp='cp -v'
alias mv='mv -v'
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias du='du -sh' # calculate disk usage for a folder
alias myip="curl -s https://ipinfo.io/json | jq"

alias zshconf="$EDITOR $HOME/.zshrc"
alias localconf="$EDITOR $HOME/.localrc"

alias src="omz reload"
