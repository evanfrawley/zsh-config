q# If you come from bash you might have to change your $PATH.
. ~/secrets.zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.bash_profile
RPROMPT="[%D{%m/%f/%y}|%@]"
PROMPT=$(echo $PROMPT | sed 's/(base) //')
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(encode64 jsontools osx)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

######################################
### CHANGE LOCATION
######################################
alias gg="cd ~/code"
alias ggo="cd ~/go/src/github.com"
alias ggg="cd ~/go/src/github.com/kangagg/kanga2"

####################

######################################
### GOLANG STUFF
######################################
export GOPATH=~/go
export PATH="$GOPATH/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:/Users/evanfrawley/Library/Python/3.7/bin:$PATH"
alias python="python3"

######################################
### PERSONAL SITE STUFF
######################################
export PERSONAL_SITE_IP=192.241.212.197

######################################
### GIT HELPERS
######################################

# Git log
alias log='git log'
# Git Status
alias gs='git status'
# Git diff
alias gd='git diff'
# Go back to last branch
alias back='git checkout @{-1}'
# Go to `dev` branch... this should be more robust though
alias staging='git checkout staging'
alias master='git checkout master'
# All git branches
alias allbranch='git branch -a'
# Local git branches
alias branch='git branch'
alias unix_ts="date +'%s'"
# git commit --amend -m ""
# Amend
function amend {
  git commit --amend -m $1;
}

# Checks out a selected branch as a row from the output of git branch
function co {
  git branch | sed -n "$1p" | xargs git checkout
}
 
# Deletes a branch that maps to a row in git branch
function delb {
  git branch | egrep -v "(master|staging)" | xargs git branch -D
}

# Squashing
function squash {
  git reset --soft $1; git commit -a --amend --no-edit;
}

######################################
### OTHER HELPERS TO MAKE LIFE :)
######################################
# Open this file in vscode
alias oz='code ~/.zshrc'
# Open boop scripts in vscode
alias boop='code ~/.boop/'
# Refreshes profile
alias refenv='source ~/.zshrc' 
alias ref='source ~/.zshrc' 
# Cuz pushing on a new branch gets easier
eval $(thefuck --alias)

######################################
### DOCKER STUFF
######################################
export DOCKER_USER=evanfrawley
# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Bash into running container
dlogs() { docker logs $1 }

# Remove all containers
function drmf() { docker rm -f $(docker ps -a -q); }

# Remove all images
function dri() { docker rmi $(docker images -q); }

# Get images
alias di="docker images"

# Bash into running container
function dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Nuke all docker containers / images
function dnuke() { docker kill $(docker ps -qa); docker rm -v $(docker ps -qa); docker rmi -f $(docker images -q);  }

# Redis CLI
function rcli() { docker exec -it $1 redis-cli  }

#### Yarn shortcuts
alias ybs="yarn build:staging"
alias ybp="yarn build:prod"
alias ybl="yarn build:local"
alias yp="yarn package"
alias yf="yarn format"
alias yfq="yarn format:quiet"
alias yp="yarn package"
alias ypff="yarn package:firefox"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evanfrawley/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/evanfrawley/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evanfrawley/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/evanfrawley/Desktop/google-cloud-sdk/completion.zsh.inc'; fi

## Android Studio Stuff
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/evanfrawley/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/evanfrawley/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/evanfrawley/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/evanfrawley/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

