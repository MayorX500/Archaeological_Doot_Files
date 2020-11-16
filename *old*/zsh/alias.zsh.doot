if hash exa &>/dev/null
then
    alias ls='exa' 
    alias l='exa -lsnew -a'
    alias ll='exa -lsnew'
    alias tree='exa -T'

else
    alias ls='ls --color=auto'
fi

#config files
alias doot='$DOTFILES'
#alias zshrc='v $ZSHDIR/.zshrc'
#alias zalias='v $ZSHDIR/alias.zsh'
#alias zprofile='v $ZSHDIR/.zprofile'

alias {vim,v}='nvim'; 
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias ..='cd ..'
alias diff="diff --color=auto"
alias z='zathura'
alias py='python'
alias lightkeys='sudo chown $USER:$USER /sys/class/backlight/intel_backlight/brightness'
alias susp='systemctl suspend'
alias rbt='reboot'
alias ka='killall'
alias mirrors='reflector -c "PT" -f 20 -l 25 -n 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias minecraft='prime-run minecraft-launcher'
alias weather="curl 'wttr.in/~'${1:-Braga}'+'$2'?'${3:-0}"

extract() {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 -v "$1"   ;;
      *.rar)       unrar x "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *.xz)        xz -d "$1"     ;;
      *)           echo "$1 cannot be extracted via ex()" ;;
    esac
  else
    echo "$1 is not a valid file"
  fi
}

mkcd() {
  mkdir $@
  cd $@
}
