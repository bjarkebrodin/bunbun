
# Gnome keyboard shortcut configurations,

why not use i3/bspwm/sway? built-in hardware support + nvidia driver support is dodgy

Preparation:
1. Disable all keybinds
2. Remap the bottom row of keyboard such that the layout is [ Ctrl | fn | Alt | Super |     Space     | ... ]
3. Set the following keybindings (in order at the time of writing)


Insights:
- Vimium handles browser shortcuts, so we can disregard overlap with standard browser configuration
- We can use extended gestures freely, since we alread have a way of swapping workspaces

* https://extensions.gnome.org/extension/1253/extended-gestures/

todo: set tilix as default
todo: reconfigure tilix tiling keybindings
todo: make the top-bar Nord colored, maybe just find a plain bar and modify the background color
todo: find a bawler GDM greeter screen
todo: can we have cooler screen locking?
todo: how do we switch kernel/driver? need zen kernel because duh and nvidia for CUDA
todo: consider nvim for better wayland integration or simply use xorg


## Standard Gnome shortcut settings

Launch terminal       Super + Return
Launch webbrowser     Super + B
Move win monitor down Super + Shift + J
Move win moniter up   Super + Shift + K
Move win monitor rght Super + Shift + L
Move win monitor left Super + Shift + H

Move win wkspc 1      Super + Shift + 1
Move win wkspc 2      Super + Shift + 2
Move win wkspc 3      Super + Shift + 3
Move win wkspc 4      Super + Shift + 4

Switch wkspc 1        Super + 1
Switch wkspc 2        Super + 2
Switch wkspc 3        Super + 3
Switch wkspc 4        Super + 4

Switch Windows        Super + Tab

Copy scrnsht of area  Super + S
Copy scrnsht          Super + P
Record screencast     Super + R
Save scrnshot of win  Super + Shift + W
Save scrnshot of area Super + Shift + S
Save scrnshot         Super + Shift + P

Focus active notific  Super + Ctrl + Return
Lock screen           Super + Alt + Q
Log out               Super + Alt + E

Show the run cmd      Super + Space

Switch input source   Super + Alt + Space 

Close Window          Super + W
Hide Window           Super + M
Toggle Fullscreen     Super + F

View split on left    Super + Alt + H
View split on right   Super + Alt + L


Enable natural scrolling and tap to click
Increase touchpad speed


todo: make system monitor open on ctrl+alt+del
todo: need some way to move window focus up/down/left/right and bind to Super + j/k/l/h



##  Extended gestures

3F Left: Go forward
3F Right: Go back
3F Up/Down: Toggle overview


