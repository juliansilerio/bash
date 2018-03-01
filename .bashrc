# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls -A --group-directories-first --color'
alias ll='ls -laF --group-directories-first --color'
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"


# clear on enter and put output on new line
#bind '"\C-m": "\C-l\C-j"'

# ll after every command
PROMPT_COMMAND+="ll"

source ~/.git-completion.bash
