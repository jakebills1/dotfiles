alias pd='prettier --write "./*.js"'
alias pdc='prettier --check "./*.js"'
set -o vi
alias r='ruby'
alias g="g++"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export RUBYOPT='-W:no-deprecated -W:no-experimental'
alias rsib="nohup rails s -p 3001 >> log/nohup.out 2>&1"

