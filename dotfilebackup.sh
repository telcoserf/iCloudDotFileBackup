#!/bin/bash

# This script backs up dotfiles (eg. .bash_profile, .vimrc, .ssh/config, etc.
# so they can be restored and/or replicated to other hosts where they're needed.

# Author: Zach Wendell
# Date/Time: 20170915 21:10 UTC

# Define a variable called '_date' that will pull and store the current timestamp
_date=`date -u +"%Y%m%dT%H%M%SZ"`
_hostname=`hostname`

# Back up my .bash_profile file
cp ~/.bash_profile ~/Library/"Mobile Documents"/com~apple~CloudDocs/dotfilesbackup/$_hostname"_bash_profile_"$_date.txt

# Back up my .ssh/config file
cp ~/.ssh/config ~/Library/"Mobile Documents"/com~apple~CloudDocs/dotfilesbackup/$_hostname"_ssh-config_"$_date.txt

# Back up my .vimrc file
cp ~/.vimrc ~/Library/"Mobile Documents"/com~apple~CloudDocs/dotfilesbackup/$_hostname"_vimrc_"$_date.txt

echo "Done!"

# eof
