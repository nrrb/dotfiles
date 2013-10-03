# .bashrc

# Function for randomized password
randpw(){ < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-16};echo;}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
alias spotify='~/bin/my-spotify 2> /dev/null &'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh

export PS1="\[\a\]\[\e[0;31m\]\u@\h {\[\e[1;32m\]\w\[\e[0;31m\]}\n\[\e[0;31m\]$\[\033[0m\]"

export PATH=~/bin:$PATH
