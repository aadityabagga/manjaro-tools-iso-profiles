#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx
#

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

DEFAULT_SESSION=xfce4-session
case $1 in
  xfce) exec ck-launch-session xfce4-session ;;
  openbox) exec ck-launch-session openbox-session ;;
  *) exec ck-launch-session $DEFAULT_SESSION ;;
esac
