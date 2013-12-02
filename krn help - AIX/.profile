

PATH=/usr/bin:/etc:/usr/sbin:/usr/ucb:$HOME/bin:/usr/bin/X11:/sbin:.

export PATH

if [ -s "$MAIL" ]           # This is at Shell startup.  In normal
then echo "$MAILMSG"        # operation, the Shell checks
fi                          # periodically.




#My personal settings

#mapping backspace key
stty erase ^?
stty erase ^H



if [ -e ~/.alias ]; then
	. ~/.alias
fi
if [ -e ~/.export ]; then
        . ~/.export
fi



