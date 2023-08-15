# Just exit (for now) if we are not under X
if [ ! $(pgrep -x "Xorg") ]; then
  exit 1
fi

# bind keys for saving replays
xbindkeys -f "$PWD/.xbk"

# kill potential existing instances of gsr
killall gpu-screen-recorder

# run screen recorder
# options:
# -r = replay length
# -c = file type
# -w = window/screen
# -f = framerate
# -a = audio sink (record audio)
# -o = output path
gpu-screen-recorder -r 30 -c "mp4" -w "$(xrandr --query |  awk '/primary/ {print $1}')" -f 60 -a "$(pactl get-default-sink).monitor|$(pactl get-default-source)" -o "$HOME/Replays" &

# run steam game
"$@"

# kill the screen recorder background task
killall gpu-screen-recorder
