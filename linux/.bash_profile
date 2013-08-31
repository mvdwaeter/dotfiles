# load dotfiles root .bash_profile
source ~/.dotfiles/common/.bash_profile

# make sure "workon" cmd works
export WORKON_HOME=$HOME/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# needed to execute nginx command
alias sudo='sudo '

# be able to say sudo nginx -s reload
alias nginx='/usr/sbin/nginx'
