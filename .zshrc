# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/Cellar/ruby/2.1.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/Cellar:/Users/blambo/bin/arcanist/bin"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# We just want one EDITOR variable for now
export EDITOR='vim'
alias v='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

. `brew --prefix`/etc/profile.d/z.sh

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ulimit -n 2048
ulimit -u 1024

export PATH=/usr/local/sbin:~/bin:~/Library/Haskell/bin:$PATH
# Adding Tex Live specifically
export PATH=$PATH:/usr/local/texlive/2014basic/bin/x86_64-darwin

# Aliases for ease and profit
alias ls='ls -GFha'
alias gg='git log --graph --decorate --oneline'

#
# Qwilr aliases/shortcuts/functions
#
function qwilrStart(){
  source ~/.qwilr_commands
  cd $qfolder
}

qwilrWebsiteFolder=~/dev/qwilr-website

alias qwilrstart=qwilrStart
alias qs=qwilrStart
alias qe='qwilrstart && subl .'

#
# Docker stuff
#
export DOCKER_CERT_PATH=/Users/blambo/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
