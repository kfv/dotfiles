# load .Xresources configuration
xrdb -merge .Xresources

# Set the background image (requires graphics/feh)
feh --bg-fill /usr/home/kfv/Documents/Photos/Wallpapers/aku-1bats.jpg

# Run x11-wm/compton (reads from .config/compton.conf)
compton &

# Run slstatus (https://tools.suckless.org/slstatus/)
slstatus &

# Run x11-wm/dwm
exec dwm
