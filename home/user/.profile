ibus-daemon -d -x
export EDITOR=/usr/bin/gedit
export BROWSER=/usr/bin/vivaldi-stable
export TERM=alacritty
export MAIL=thunderbird
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

xrandr --output HDMI-A-0 --left-of DisplayPort-1 --auto

nitrogen --restore
