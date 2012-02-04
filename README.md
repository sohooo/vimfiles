# sohooo's VIM config

This setup is based on various sources all around github. Huge credits go to:

* [mutewinter's dotvim](https://github.com/mutewinter/dot_vim)
* [skwp's dotfiles](https://github.com/skwp/dotfiles)
* [MacVim w/ Drawer](https://github.com/alloy/macvim)

## Screenshot

![MacVim with Drawer](http://dl.dropbox.com/u/393159/sohooo_macvim.png "Macvim")

## Installation

1. `cd; git clone http://github.com/sohooo/vimfiles.git .vimfiles` in your home folder.
2. `ln -s .vimfiles .vim && ln -s .vimfiles/vimrc .vimrc` to make the symbolic links.
3. Install the awesome [Vundle](https://github.com/gmarik/vundle) with `git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
4. Start Vim and type `:BundleInstall` to install the plugins defined in `.vimrc`.
5. Enjoy!
6. Bonus: For a even prettier status bar, use one of the patched fonts from the [Powerline wiki](https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts)

## Bindings

Here's a list of useful keyboard bindings:

* `ctrl-shift-d` OS X File Drawer
* `,cc`     toggle Comment on/off
* `,d`      toggle NerdTree
* `,f`      find file w/ FuzzyFinder
* `,y`      show YankRing
* `,n`      toggle IndentGuides
* `,u`      toggle Gundo
* `,vim`    edit vimrc
* `,vir`    edit README.md (to look up bindings)
* `,tt`     change tabs
* `jj`      remap von ESC; this rox!
* `F9`      toggle paste/nopaste
* `F10`     toggle number/nonumber

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

