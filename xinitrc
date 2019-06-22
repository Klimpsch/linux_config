setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock
setxkbmap -option ctrl:nocaps       # Make Caps Lock a Control key
xmodmap -e 'keycode 37='

exec i3
