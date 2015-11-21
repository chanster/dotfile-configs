# ~/.bashrc

export EDITOR=vim
export TERM=xterm-256color

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

SC="\[\033["
EC="\[\033[0m\]"

if [ "`id -u`" = 0 ]; then
    export PS1='┌─[`if [ $? = 0 ]; then echo "\[\033[32m\]✔\[\033[0m\]"; else echo "\[\033[31m\]✗\[\033[0m\]"; fi`]( \A )─\[\033[31m\]\u\[\033[0m\]@\[\033[36m\]\h\[\033[0m\]:[\[\033[32m\]\w\[\033[0m\]]\n└─# '
else
    export PS1='┌─[`[[ $? = 0 ]] && echo "\[\033[32m\]✔\[\033[0m\]" || echo "\[\033[31m\]✗\[\033[0m\]";`]( \A )─\u@\[\033[36m\]\h\[\033[0m\]:[\[\033[32m\]\w\[\033[0m\]]\n└─$ '
fi

## Autocomplete ## {{{
complete -cf sudo
complete -cf man
## }}}

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

