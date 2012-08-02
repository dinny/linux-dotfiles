# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


#####################################################
#                                                   #
#      DERIVED FROM UBUNTU DEFAULT .PROFILE         #
#                                                   #
#####################################################

# Process distribution related settings
if grep "Ubuntu" /etc/issue
then
    # Ubuntu
    DLS="~/Downloads"
elif grep "SUSE" /etc/issue
then
    # SUSE(include openSUSE)
    DLS="~/Download"
fi

# Eclipes
[ -d $DLS/eclipse ] && PATH="$DLS/eclipse:$PATH"

# java runtime
#[ -d $DLS/jre/bin ] && PATH="$DLS/jre/bin:$PATH"

# commandline tools for teamprise
[ -d $DLS/teamprise/TEE-CLC-10.0.0 ] && PATH="$DLS/teamprise/TEE-CLC-10.0.0:$PATH"


export PATH

# make vim as the default editor(git and sudoedit)
export EDITOR=vim
