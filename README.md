# Reps
A Steam game launch wrapper which runs `gpu-screen-recorder` alongside your game.

## What it does
Before the game launches:
1. Bind <kbd>Alt</kbd> + <kbd>R</kbd> to save replays
2. Bind <kbd>Alt</kbd> + <kbd>K</kbd> to kill the screen recorder
3. Kill any previous instances of `gpu-screen-recorder`
3. Run the `gpu-screen-recorder` (check [the script](./reps.sh) for details and options)

After the game exits:
1. Kill the `gpu-screen-recorder` instance

## Requirements
- `gpu-screen-recorder` (available on the AUR as [gpu-screen-recorder-git](https://aur.archlinux.org/packages/gpu-screen-recorder-git))

## Installation
- Clone repo: `git clone https://github.com/mWalrus/reps`

## Usage
Add this to your launch commands for any game:
`/path/to/reps/reps.sh %command%`
