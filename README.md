# vim-code-dark
`vim-code-dark` is a dark **color scheme for [Vim](http://www.vim.org/)** heavily inspired by the look of the Dark+ scheme of [Visual Studio Code](https://code.visualstudio.com/). While many of the colors are same, there are additional colors for specific usage or reserved for future use. The scheme also defines specific GUI colors (e.g. popup menu) and fully supports [`vim-airline`](https://github.com/vim-airline/vim-airline).

## Screenshots

![Screenshots](https://cloud.githubusercontent.com/assets/10374559/23332907/f524012a-fb81-11e6-8386-cda654d33ccd.png)

## Color Palette

![Color Palette](https://cloud.githubusercontent.com/assets/10374559/23146186/d005f732-f7d4-11e6-89fe-c27b0347702e.png)

## Questions & Answers

### How to install?
Simply as all other Vim plugins following the standard procedure of your plugin manager / manually.
*  [Vundle](https://github.com/gmarik/vundle)
  *  `Plugin 'tomasiser/vim-code-dark'`
*  [vim-plug](https://github.com/junegunn/vim-plug)
  *  `Plug 'tomasiser/vim-code-dark'`
*  manual
  *  copy all of the files to `~/.vim` (or `$HOME\vimfiles` on Windows) directory

### How to activate?
You can add the following line to your `.vimrc`:

```
colorscheme codedark
```

If you have [`vim-airline`](https://github.com/vim-airline/vim-airline), you can also use the provided theme:

```
let g:airline_theme = 'codedark'
```

### What is and how to enable the conservative mode?
If you don't like many colors and prefer the **conservative style of the standard Visual Studio**, you can try the conservative mode with reduced number of colors. To enable it, put the following line to your `.vimrc` *before* setting the scheme, like so:

```
let g:codedark_conservative = 1
colorscheme codedark
```

### Why does file syntax not look like in Visual Studio Code?
Because Vim uses different syntax rules for files and this is just a colorscheme.

### Are terminal colors supported?
Unfortunately terminals are **not supported** yet, see [#2](https://github.com/tomasiser/vim-code-dark/issues/2) and feel free to send a pull request.

### My favourite language XYZ has wrong colors!
There are a lot of syntax definitions with different highlight groups. Feel free to send a pull request with additional highlight groups.

### What setup can I see on the screenshots?
Screenshots come from gVim on Windows with the following font options and [`vim-airline`](https://github.com/vim-airline/vim-airline) enabled.

```
set enc=utf-8
set guifont=Powerline_Consolas:h11
set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
```

