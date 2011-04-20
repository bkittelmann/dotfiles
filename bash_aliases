#!/usr/bin/env bash

# some more ls aliases
alias ll='ls -l'
alias llh='ls -hal'
alias la='ls -A'
alias l='ls -CF'
alias g='gnome-open'

# some general cd alias stuff
alias ..='cd ..'
alias ...='cd ../..'
alias cdd='cd -'
alias ~='cd ~'

# disk usage of current directory, in total
alias dus='du -Pschx'

# narrow prompt for script calls etc.
alias narrowprompt='export PS1="\u@\h \W$ "'
alias wideprompt='export PS1="$DEFAULTPROMPT"'

# select last run command and copy it to clipboard
alias cliplast='history | tail -2 | head -1 | cut -c 8- | xargs echo -n | xsel -i -b'

# select last argument and copy it to clipboard
alias cliparg='history | tail -2 | head -1 | cut -c 8- | python -c "import sys; print sys.stdin.read().split()[-1]," | xargs echo -n | xsel -i -b'

# receive content to clip via pipe
alias clip='python -c "import sys; sys.stdout.write(sys.stdin.read().strip())" | xsel -i -b'

# the great file finding tool ack!
alias ack='ack-grep'

#--- Git stuff ----------------------------------------------------------------

# shows the files that are different compared to the master on GitHub
alias git-diff-master='git diff origin/master..HEAD --color --stat'

# shows the files which are different compared to the "snapshot" branch
alias git-diff-snapshot='git diff snapshot --color --stat'


#--- Miscellaneous ------------------------------------------------------------

# Bash Info Manual: If the last character of the alias value is a space or tab character,
# then the next command word following the alias is also checked for alias expansion.
alias sudo="sudo "

# Annoyed that the program isn't installed yet and Ubuntu tells you the needed apt-get line?
# With this function you can instantly rerun the installation process, without needing to
# copy the line, pasting and executing it again.
doinstall ()
{
	$($(history 2 | awk {'print $2'} | head -n 1) 2>&1 | tail -n 1)
}
