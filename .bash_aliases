# ~/.bash_aliases: executed by .bashrc for additional aliases

# Basic Aliases
alias c='clear'

# NordVPN Aliases
alias nos='nordvpn status'
alias noc='nordvpn connect'
alias nod='nordvpn disconnect'

# Add safety nets 
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Control cd command behavior
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# Other aliases added via echo on command line
# Added via command like $ echo "alias gs='git status'" >> .bash_aliases
alias h=history
alias gs='git status'
alias glog='git log --graph --decorate --oneline'

