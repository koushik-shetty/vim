#
alias g=git
alias gs="git status"
alias ga="git add "
alias gd="git diff"
alias gcm="git commit -m"
alias gacm="ga . && gcm "
alias gco="git checkout"
alias gpr="git pull -r"
alias glo="git log --oneline"

gacmp () {
echo "gacmp $1"
  gacm "$1"
  git push
}


alias c=clear
alias e=exit

alias obp="code ~/.bashrc"
alias sbp="source ~/.bashrc"

alias ws="cd ~/workspace"
alias ek="ws && cd personal/ekatva"

shopt -s autocd 
