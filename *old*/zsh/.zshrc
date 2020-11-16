source ~/.dotfiles/zsh/alias.zsh
source ~/.dotfiles/zsh/plugins.zsh

autoload -U colors && colors 
autoload -Uz compinit

setopt autocd
unsetopt nomatch #if there is no match using globs, it is not expanded

zstyle :compinstall filename "~/.zshrc"
zstyle ':completion:*' menu select # highlights options of completion 

compinit

#Prompt
setopt PROMPT_SUBST
export PROMPT=' %{$fg[red]%}%c %{$fg[cyan]%}ん %{$reset_color%}'

# History
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history 
setopt appendhistory     #Append history to the history file (no overwriting)
setopt sharehistory      #Share history across terminals
setopt incappendhistory  #Immediately append to the history file, not just when a term is killed


bindkey "^?" backward-delete-char # fixes problem in vi mode when you  want to delete using backspace after leaving normal mode

