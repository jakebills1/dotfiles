[[ -r /usr/local/etc/profile.d/bash_completion.sh ]] && . /usr/local/etc/profile.d/bash_completion.sh
# source /usr/local/git/contrib/completion/git-completion.bash
# GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='[\u \W$(__git_ps1)]\$ '
# export GITAWAREPROMPT=~/.bash/git-aware-prompt
# source "${GITAWAREPROMPT}/main.sh"
# export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
# Color prompt for git
reset=$(tput sgr0)
boldgreen=$(tput setaf 2)$(tput bold)
cyan=$(tput sgr0)$(tput setaf 6)
boldred=$(tput setaf 1)$(tput bold)
boldwhite=$(tput setaf 7)$(tput bold)
boldyellow=$(tput setaf 3)$(tput bold)

PARENCLR=$'\001\e[0;36m\002'
BRANCHCLR=$'\001\e[1;33m\002'

alias branchname="git branch 2>/dev/null | sed -ne 's/^* \(.*\)/ ${PARENCLR}(${BRANCHCLR}\1${PARENCLR}\)/p'"

GIT_STATUS='$(branchname)'

PROMPT_CHAR="\$"
PS1=":\[$cyan\]{\[$boldwhite\].../\W\[$cyan\]}\[$reset\]$GIT_STATUS\[$reset\]\n$PROMPT_CHAR "
export PATH=/Users/jakebills/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/Applications/Postgres.app/Contents/Versions/11/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval export PATH="/Users/jakebills/.rbenv/shims:${PATH}"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}

export NVM_DIR="/Users/jakebills/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$PATH:$(yarn global bin)"
alias ls='ls -1 -p -G'
alias gpom='git pull origin master'	
alias rsp3001='rails server -p 3001'
alias ys='yarn start'
# this reads in markdown
rmd () {
  pandoc $1 | lynx -stdin
}
