#
alias g=git
alias gs="git status"
alias ga="git add "
alias gd="git diff"
alias gds="git diff -s"
alias gcm="git commit -m"
alias gacm="ga . && gcm "
 
alias gco="git checkout"
alias gpr="git pull -r"
alias glo="git log --oneline"


function printErrorMessage() {
	 echo -e "\033[1;31m$1\033[0m" 
}

function gacmp(){
	if [ -z "$1" ]; then 
		#echo -e "\033[1;31mError: Commit message not supplied\033[0m"
		printErrorMessage "Error: Commit message not supplied"
	else
		gacm "$1"
		gp
	fi
	
}



alias c=clear
alias e=exit
alias ad="adb devices"
alias nra="npm run android"

alias obp="code ~/.bashrc"
alias sbp="source ~/.bashrc"

alias ws="cd ~/workspace"
alias ek="ws && cd personal/ekatva"

shopt -s autocd 

#claude
#run claude for local session
alias claude-local="ANTHROPIC_BASE_URL=http://localhost:11434 ANTHROPIC_AUTH_TOKEN=ollama claude --model=gemma4:e2b"
