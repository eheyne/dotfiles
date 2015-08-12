# Tell ls to be colorful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:$HOME/bin:/usr/local/sbin
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
fi


PS1='\[\033[01;32m\]\u\[\033[0;33m\]@\[\033[0;35m\]\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] $(__git_ps1 "\[\033[01;33m\](%s)\[\033[00m\]"): '

# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1'

alias ...='cd ../..'
alias reload='source ~/.bash_profile'
alias dash='cd ~/Projects/Dashboards/VHTDashboard'
alias uakron='cd ~/Documents/UAkron'
alias ISP='cd ~/Documents/UAkron/ISP'
alias WP='cd ~/Documents/UAkron/WP'
alias VP='cd ~/Projects/vht'
alias ll='ls -la'
alias ccat='highlight -O ansi'
alias ejhwp='cd /Volumes/ejh15/public_html/assets/WP'
alias lws='python -m SimpleHTTPServer '
alias subl='open -a Sublime\ Text\ 2 '
##
# Your previous /Users/eheyne/.bash_profile file was backed up as /Users/eheyne/.bash_profile.macports-saved_2013-11-18_at_19:24:53
##

# MacPorts Installer addition on 2013-11-18_at_19:24:53: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
