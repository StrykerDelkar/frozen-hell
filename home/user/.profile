ibus-daemon -d -x
export EDITOR=/usr/bin/micro
export BROWSER=/usr/bin/google-chrome-stable
export TERM=gnome-terminal
export MAIL=thunderbird
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

xrandr --output DP-0 --left-of DP-2 --auto
xrandr --output DP-4 --above DP-0 --rotate inverted --auto

nitrogen --restore
