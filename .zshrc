# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:~/Documents/Dev/bin:$PATH
export VAGRANT_HOME=~/Documents/Vagrant/vagrant.d

# nvm homebrew path export configuration:
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="puddletown"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
plugins=(git osx textmate colorize colored-man-pages extract thefuck docker gulp history z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='atom'
# else
#   export EDITOR='nano'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#
# ZSH aliases

alias zsh='atom ~/Documents/Dev/ZSH/.zshrc'
alias gitconfig='atom ~/Documents/Dev/Git/.gitconfig'
alias ohmyzsh='atom ~/.oh-my-zsh'

alias reload='. ~/.zshrc'
alias update='brew cu -ay --cleanup && brew update && npm update -g && apm update --no-confirm && upgrade_oh_my_zsh'
alias theme='a ~/.oh-my-zsh/themes/puddletown.zsh-theme'

# vagrant
alias v='vagrant up && vagrant ssh'
alias vd='vagrant destroy'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vu='vagrant up'

#misc commands
alias o='open'
alias la='ls -la'
alias l='ls -lhG'
alias a='atom'
# alias tmm='sudo fs_usage -f -R filesys backupd'
# alias wds='webpack-dev-server --progress --colors'
# alias ytmp3='youtube-dl -x --audio-format mp3'

# flush DNS
alias flush='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed'

# Back up and update scripts

alias backupall="cd ~/Documents/Dev/Atom && ./backup.sh && cd ~/Documents/Dev/Git && ./backup.sh && cd ~/Documents/Dev/iTerm && ./backup.sh && cd ~/Documents/Dev/ZSH && ./update.sh && cd ~/Documents/Dev/Brew && ./backup.sh && cd ~/Documents/Dev/"

alias backupatom="cd ~/Documents/Dev/Atom && ./backup.sh"
alias updateatom="cd ~/Documents/Dev/Atom && ./update.sh"

alias backupgit="cd ~/Documents/Dev/Git && ./backup.sh"
alias updategit="cd ~/Documents/Dev/Git && ./update.sh"

alias backupiterm="cd ~/Documents/Dev/iTerm && ./backup.sh"
alias updateiterm="cd ~/Documents/Dev/iTerm && ./update.sh"

alias backupzsh="cd ~/Documents/Dev/ZSH && ./backup.sh"
alias updatezsh="cd ~/Documents/Dev/ZSH && ./update.sh"

alias backupbrew="cd ~/Documents/Dev/Brew && ./backup.sh"
alias updatebrew="cd ~/Documents/Dev/Brew && ./update.sh"

alias backupinstaller="cd ~/Documents/Dev/Installer && ./backup.sh"

alias ptb='ptd-bootstrap'
alias cront='env EDITOR=atom crontab -e'

# Brew Cask
alias bun='brew uninstall'
alias bcun='brew cask uninstall'
alias brin='brew reinstall'
alias bcrin='brew cask reinstall'
alias bupg='brew upgrade'
alias bupd='brew update'
alias bi='brew install'
alias bs='brew search'
alias bc='brew cask'
alias bci='brew cask install'
alias bl='brew list'
alias bcl='brew cask list'
alias bcs='brew cask search'
alias bcu='brew cu -ay'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

# alias ug="ungit --port=8081"

#Git Aliases
alias ga="git add"
# alias gac="git commit -am"
alias gb="git branch"
alias gba="git branch --all"
# alias gbd="git branch -d"
# alias gbdr="git push origin --delete new"
# alias gbD="git branch -D"
# alias gbv="git branch -v"
alias gcm="git commit -m"
# alias gac="git commit -ma"
alias gch="git checkout"

# alias gchb="git checkout branch"
# alias gchh="git checkout head"
alias gcl="git clone"
alias gp="git pull"
alias gd="git diff"
# alias gds="git diff --staged"
alias gi="git init"
# alias gib="git init --bare"
# alias gl="git log --graph --pretty=format:'%Cblue%h%Creset %Cred(%cr) %C(bold blue)%an%C(yellow)%d %Creset %s' --abbrev-commit"
# alias gm="git mergetool --tool=emerge"
alias gpush="git push origin master"
alias gpull="git pull origin master"
# alias gpulla="git pull --all"
# alias gr="git revert"
# alias grh="git revert HEAD"
# alias gre="git reset"
# alias gs="git status"
# alias gst="git stash"
# alias gsta="git stash apply"
# alias gstl="git stash list"
# alias gstp="git stash pop"
