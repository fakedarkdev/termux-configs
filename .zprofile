#!/data/data/com.termux/files/usr/bin/env zsh

clear

[ -d "$HOME/.welcomeScreen" ] && MOTD="$HOME/.welcomeScreen"

for i in $(find $MOTD -maxdepth 1 -regex '.+/[0-9\-].+' -not -regex ".+\.disabled" | sort)
do
    zsh $i
done
