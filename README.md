# Reps
A Steam game launch wrapper which runs `gpu-screen-recorder` alongside your game.

## Requirements
- `gpu-screen-recorder` (available on the AUR as [gpu-screen-recorder-git](https://aur.archlinux.org/packages/gpu-screen-recorder-git))
- `xbindkeys` for, you guessed it, binding keys
- `xrandr` to discover your primary monitor

## Installation
- Clone repo: `git clone https://github.com/mWalrus/reps`

## Usage
Add this to your launch commands for any game:
`/path/to/reps/reps.sh %command%`

## What it does
Before the game launches:
1. Bind <kbd>Alt</kbd>+<kbd>R</kbd> to save replays
2. Bind <kbd>Alt</kbd>+<kbd>K</kbd> to kill the screen recorder
3. Kill any previous instances of `gpu-screen-recorder`
3. Run the `gpu-screen-recorder` (check [the script](./reps.sh) for details and options)

After the game exits:
1. Kill the `gpu-screen-recorder` instance

## Wayland
Since this uses `xbindkeys` and `xrandr`, this little script will only work on systems
running the X window server and therefore will not be executed under any other window
server such as wayland.

BUT, `gpu-screen-recorder` will work under wayland so you can still use that on there.
You can use the flags used in the script as reference.

If you want to contribute a wayland version of this script you can submit
a pull request to the 'wayland' branch :)
