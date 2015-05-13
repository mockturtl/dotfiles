# APT
alias update="sudo -b aptitude update -q2"
alias clean="sudo apt-get clean && sudo apt-get autoremove"
alias safe-upgrade="sudo aptitude safe-upgrade"
alias full-upgrade="sudo aptitude full-upgrade"
alias held="aptitude search ~ahold"
alias hold="sudo aptitude hold"
alias unhold="sudo aptitude unhold"
alias show="aptitude show"
function showp { show "$1" | less; }
alias showsrc="apt-cache showsrc"
alias ver="aptitude versions"
alias policy="apt-cache policy"
alias deps="apt-cache depends"
alias rdeps="apt-cache rdepends"
alias obsolete="aptitude search ~o"
alias changelog="aptitude changelog"
alias experimental="aptitude search ~S~i~Aexperimental"
alias install="sudo aptitude install"
alias remove="sudo aptitude remove"
alias purge="sudo aptitude purge"
alias audit="sudo dpkg --audit"

# filesystem
alias ..="cd .."
alias ...="..; .."
alias ....="...; .."
alias .....="....; .."
alias ......=".....; .."
alias .......="......; .."
alias ........=".......; .."
alias .........="........; .."
alias ..........=".........; .."
alias diff="colordiff -u"
alias grep='grep -n --colour=auto'
alias agc="ag -C"
alias ls="ls -hF --color=auto"
alias lr="ls -R"      # recursive
alias ll="ls -l"
alias la="ll -A"      # show hidden
alias lp="la | less"
alias lx="ll -BX"     # extension sort
alias lz="ll -rS"     # size sort
alias lt="ll -rt"     # time sort
alias df="df -h"
alias du="du -h"
function dup { du -d 1 "$1" | sort -h; }
alias ds="du -s"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias l="less"
alias c="clear"
alias h="history | grep" # use with `!cmdno`
pushd() { builtin pushd "$@" > /dev/null; }
popd() { builtin popd "$@" > /dev/null; }

alias lady="man"      # http://www.debian.org/News/2012/20120606

# datetime
alias datet='date +"%T"'            # hh:mm:ss
alias dateh='date +"%m-%d-%Y"'
alias datef='date +"%F"'            # YYYY-MM-DD
alias datev='date +"%Y%m%d%H%M%S"'
alias dates='date +"%s"'            # epoch 

# java
alias ivy="java -jar $IVY"

# rb
alias rbenv-sh='eval "$(rbenv init -)"'
alias be="bundle exec"
alias rs="rspec -c"

# dart
alias pga="pub global activate"
alias pgr="pub global run"

# net
alias ports='netstat -tulanp' #  --all --numeric --programs --inet --inet5'
alias ping='ping -c 5'
alias curlh='curl -I'
alias wget='wget -ci'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
