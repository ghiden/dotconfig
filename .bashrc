export PATH=/Users/hidenari/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=vim
export PS1="(\u) \w\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ [\1]/')\n\$ "
export MANPATH=/Users/hidenari/local/node/share/man:${MANPATH}
export HISTSIZE=50000
export HISTFILESIZE=50000

calc(){ awk "BEGIN{ print $* }" ;}
alias gcopen="open -a 'Google Chrome'"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
