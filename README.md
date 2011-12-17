# sohooo's VIM config

This setup is based on various sources all around github. Huge credits go to:
* [mutewinter/dot_vim](https://github.com/mutewinter/dot_vim)]
* [skwp/dotfiles](https://github.com/skwp/dotfiles)
* [MacVim w/ Drawer](https://github.com/alloy/macvim)]

## Installation

1. `cd; git clone http://github.com/sohooo/vimfiles.git .vimfiles` in your home folder.
2. `ln -s .vimfiles .vim && ln -s .vimfiles/vimrc .vimrc` to make the symbolic links.
3. Enjoy!

## Bindings

Here's a list of useful keyboard bindings:

* `,gcc`  toggle Comment on/off
* `,d`    toggle NerdTree
* `,f`    FuzzyFind file
* `,n`    toggle IndentGuides
* `,u`    toggle Gundo
* `,vim`  edit vimrc
* `,vir`  edit README.md (to look up bindings)
* `,tt`   change tabs
* `jj`    remap von ESC; this rox!
* `F9`    toggle paste/nopaste
* `F10`   toggle number/nonumber

### Fugitive

* `:Gdiff`    show diff
* `:Gstatus`  toggle files with `-`

### Tabular

* `,t=`  align =
* `,t>`  align =>

### Vundle

* `,bi`  BundleInstall
* `,bu`  BundleUpdate
* `,bc`  BundleClean

### ShowMarks

* `,mt` toggles ShowMarks on and off
* `,mh` hides an individual mark
* `,ma` hides all marks in the current buffer
* `,mm` places the next available mark


### EasyGrep

* `,vv`  search word under cursor
* `,vr`  replace word under cursor
* `,vo`  EasyGrep Options
* `:cw`  result list
* `ctrl+w enter`  open result (in CW)

