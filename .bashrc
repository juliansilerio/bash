alias ls='ls -A --color'
alias ll='ls -laF --color'
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# clear on enter and put output on new line
bind '"\C-m": "\C-l\C-j"'

# ll after every command
PROMPT_COMMAND+="ll"
