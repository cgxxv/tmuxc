#!/usr/bin/env sh

# tmux in terminal has a problem `WARNING: terminal is not fully functional`
# https://github.com/tmux/tmux/issues/2262#issuecomment-819569654
infocmp -x tmux-256color | sed -e 's/pairs#0x10000/pairs#0x1000/' -e 's/pairs#65536/pairs#32768/' > tmux-256color.src
/usr/bin/tic -x tmux-256color.src
