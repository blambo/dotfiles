if hash git 2>/dev/null; then
	if ! hash gst 2>/dev/null; then
		alias g='git'
		alias gst='git status'
		alias gco='git checkout'
		alias gc='git commit'
		alias grbi='git rebase -i'
		alias gg='git log --graph'
	fi
fi
