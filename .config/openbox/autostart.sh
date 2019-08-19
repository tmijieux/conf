#
# These things are run when an Openbox X Session is started.
# You may place a similar script in $HOME/.config/openbox/autostart
# to run user-specific things.
#

# If you want to use GNOME config tools...
#
#if test -x /usr/lib/openbox/gnome-settings-daemon >/dev/null; then
#  /usr/lib/openbox/gnome-settings-daemon &
#elif which gnome-settings-daemon >/dev/null 2>&1; then
#  gnome-settings-daemon &
#fi

# If you want to use XFCE config tools...
#
#xfce-mcs-manager &

tint2 &
cbatticon&
xset m 0 0
xset -b
xset s off
xset s noblank
xset -dpms
thunar --daemon &
~/.screenlayout/layout.sh
~/.screenlayout/layout_work.sh
~/.wallpaper.sh &

export ANDROID_SDK_DIRECTORY=/opt/android-sdk/
