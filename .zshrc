# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(most natural-4000 ant brew bundler cake cap extract gem git-flow git github node npm osx perl pip pow rails3 redis-cli ruby rvm svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Alias

# List directory contents
alias ls='ls -FG'
alias la='ls -AFG'
alias l=ls
alias ll='ls -@AFGhle'

# File Operations
alias rm='rm -vd'

alias rmd='rm -vr'
alias mkdir='mkdir -vp'
alias cp='cp -vRpi'

alias mv='mv -vi'

alias chmod='chmod -v'

alias df='df -ahi'

alias ln='ln -iv'

alias ps='ps -af'

alias psa='ps -Af'

alias o='open . &'

alias tu='top -o cpu' # cpu
alias tm='top -o vsize' # memory

# Execute previous command with sudo prefix:
alias fu='sudo $( fc -ln -1)'

alias afind='ack-grep -il'

alias x=extract

# Syntax highlighting less
alias vless=/usr/share/vim/vim73/macros/less.sh

# Make which return all instances
alias which='which -a'


# Corrections
alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias touch='nocorrect touch'

# MongoDB
alias start-mongo='mongod run --config /usr/local/Cellar/mongodb/1.8.2-x86_64/mongod.conf'

# Redis
alias start-redis='redis-server /usr/local/etc/redis.conf'

# PostGres start manually with:
alias start-postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

#And stop with:
alias stop-postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# This loads RVM into a shell session.
[[ -s "/Users/dharmesh/.rvm/scripts/rvm" ]] && source "/Users/dharmesh/.rvm/scripts/rvm"
