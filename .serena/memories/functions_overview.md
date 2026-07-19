# Functions Overview

## Simple Wrappers (converted to abbreviations)
- ls, lt, lta, lsa, jctl, hw, decompress, wget (removed)
- del, delf, delfi, lsdel, rdel, pacfix

## Complex Functions (kept)
- pac (yay wrapper)
- edel (trash empty with confirmation)
- cd-utils family (cdc, cdl, cdls, etc.)
- t (tmux attach/create)
- n (neovim with conditional)
- open (xdg-open with background)
- img2jpg*, img2png (image conversion)
- transcode-video-* (video conversion)
- iso2sd, format-drive (disk utilities)
- tdl, tdlm, tsl (tmux layouts)
- ga, gd (git worktree)
- fip, dip, lip (SSH port forwarding)
- ff, eff, sff (fzf file selection)
- cleanup, compress, copy, backup, etc.
- sponge, puffer-fish plugin functions

## Plugin Functions
- `_sponge_*` - sponge plugin
- `_puffer_fish_*` - puffer-fish plugin

## Completion Functions
- `__fish_*` - various completions in completions/ directory

## Notes
- Keep plugin files untouched
- Abbreviations expand on space
- Complex functions remain in functions/ directory