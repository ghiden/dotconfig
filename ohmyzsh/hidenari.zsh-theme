function ruby_version() {
        echo 'ruby('`rbenv version | sed -e 's/ .*//'`')'
}

function node_version() {
        echo 'node('`nvm version`')'
}

PROMPT='%{$fg[yellow]%}%DT%D{%H:%M:%S} $(node_version) %(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} )  %{$fg_bold[green]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
