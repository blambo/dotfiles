# Only use this file if ZSH isn't installed

# Define soem git shortcuts
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

#launchctl limit maxfiles 2048 2048 
ulimit -n 2048
ulimit -u 1024

export PATH=/usr/local/sbin:~/bin:$PATH

# Define alias for Qwilr
function qwilrStart(){
  source ~/.qwilr_commands
  cd $qfolder
}

# Aliases for ease and profit
alias ls='ls -GFha'
alias qwilrstart=qwilrStart
alias qs=qwilrStart
alias gg='git log --graph --decorate --oneline'
alias qe='qwilrstart && subl .'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
