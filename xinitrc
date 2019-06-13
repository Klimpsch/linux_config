setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock
setxkbmap -option ctrl:nocaps       # Make Caps Lock a Control key
xmodmap -e 'keycode 37='

xrdb -merge .Xresources
feh --bg-fill ~/Pictures/papes/fuki.jpg

dwm_status&
exec dwm
