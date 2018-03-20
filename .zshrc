# If you come from bash you might have to change your $PATH.
source ./secrets.zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git encode64 jsontools yarn osx)

source $ZSH/oh-my-zsh.sh

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
alias gg="cd ~/Github"
alias ds="gg && cd ds"
alias drake="gg && cd fifth-drake"
alias dropbox="cd ~/Dropbox"
alias gep="gg && cd esportsedu-project/"
alias ge="gep && cd esportsedu"
alias gea="gep && cd esportsedu-api"
alias gew="gep && cd esportsedu-webapp"
alias ges="gep && cd esportsedu-shiny"
alias gec="gep && cd esportsedu-common"
alias gesql="gep && cd esportsedu-sql"
alias ggo="cd ~/go/src"
alias goin="ggo && cd github.com/info344-a17"
alias goc="goin && cd challenges-evanfrawley"
alias meme="ggo && cd github.com/memedating/memedating"
alias group="meme"
alias gome="ggo && cd github.com/evanfrawley"
alias ms="gome && cd moms-spaghetti"
alias goinc="ggo && cd info344-in-class"
alias gota="gg && cd ta/info343"
alias gj="gg && cd journal"
alias notes="gj && cd notes"
alias cap="gg && cd capstone"
alias md="gg && cd memedating"
alias mmd="gg && cd ios-memedating"
alias snopes="cap && cd snopes"
alias noni="gg && cd noni-web"

######################################
### LOCAL DB RUNNING COMMANDS
######################################
# Start PSQL
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
# Stop PSQL
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# Start Fifth Drake DB stuff
alias dstart="pgstart && mongod"
# Stop Fifth Drake DB stuff
alias dstop="pgstop && /usr/local/bin/mongo < \"/data/db/scripts/stopDb.js\""

######################################
### WEB DEV STUFF
######################################
# Delete and reinstall all node packages
alias renode="rm ./yarn.lock && rm -rf node_modules/ && yarn"

######################################
### MAVEN & FIFTH DRAKE STUFF
######################################
# Maven Options
# export MAVEN_OPTS="-Xmx1024M -Xms2048M -XX:PermSize=256M -XX:MaxPermSize=256M -Djava.awt.headless=true"
# Maven Home
# export PATH="/usr/local/opt/apache-maven-3.5.0/bin:${PATH}"
# Add Activator to PATH
# export PATH="~/DevelopmentTools/activator-dist-1.3.12/bin:${PATH}"

######################################
### JAVA STUFF
######################################

# Java Options
# export JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8"
# # Setting PATH for Python 3.6
# export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# # For Java 7
# # export JAVA_HOME=`/usr/libexec/java_home -v '1.7*'`
# # For Java 8
# export JAVA_HOME=`/usr/libexec/java_home -v '1.8*'`

######################################
### GOLANG STUFF
######################################
export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec
export PATH="$GOPATH/bin:$PATH"
# Why do I have so many port & local address variables lol
export GOADDR="localhost:4000"
export PORT="$GOADDR"
export ADDR="$GOADDR"
export GO_ENV="development"
export REDISADDR="localhost:6379"
alias htmltest="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"

######################################
### PERSONAL SITE STUFF
######################################
export PERSONAL_SITE_IP=192.241.212.197

######################################
### GIT HELPERS
######################################

# Git log
alias log='git log'
# Force push dat
alias push='git push -f'
# Go back to last branch
alias back='git checkout @{-1}'
# Go to `dev` branch... this should be more robust though
alias dev='git checkout development'
# Pull
alias pull='git pull --rebase upstream HEAD'
# Force Push
alias fpush='git push -f origin HEAD'
# To go back to the branch you were just on
alias back='git checkout @{-1}'
# All git branches
alias allbranch='git branch -a'
# Local git branches
alias branch='git branch'

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
  git branch | sed -n "$1p" | xargs git branch -D
}

# Squashing
function squash {
  git reset --soft $1; git commit -a --amend --no-edit;
}

######################################
### OTHER HELPERS TO MAKE LIFE :)
######################################
# Displays webpack errors... Do I even use this
alias wperr='webpack --display-error-details'
# Open this file in atom
alias oz='atom ~/.zshrc'
# Refreshes profile
alias refenv='source ~/.zshrc'
# Cuz pushing on a new branch gets easier
eval $(thefuck --alias)

# added by travis gem.. why do I need this?
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

######################################
### DOCKER STUFF
######################################
export DOCKER_USER=evanfrawley
# Get images
alias di="docker images"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Remove all containers
drmf() { docker rm -f $(docker ps -a -q); }

# Remove all images
dri() { docker rmi $(docker images -q); }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Bash into running container
dlogs() { docker logs $1 }

######################################
### CURL STUFF
######################################
lcurl() {
  curl -k https://localhost/v1/$1 -X $2 \
  -H "Authorization: $3"
}

# Open Mongo
alias emongo="docker exec -it dev-mongosvr mongo"
# Open Redis
alias eredis="docker exec -it dev-redissvr redis-cli"

### Python Stuff
export PATH="$HOME/anaconda3/bin:$PATH"
