# vim-code-dark
`vim-code-dark` is a dark **color scheme for [Vim](http://www.vim.org/)** heavily inspired by the look of the Dark+ scheme of [Visual Studio Code](https://code.visualstudio.com/). While many of the colors are same, there are additional colors for specific usage or reserved for future use. The scheme also defines specific GUI colors (e.g. popup menu) and fully supports [`vim-airline`](https://github.com/vim-airline/vim-airline).

**:exclamation: To install and enable this colorscheme, [read installation instructions](#installation).**

*This colorscheme does also support 256 and 8/16 color terminals. See [installation instructions](#installation) step 3.*

## Screenshots

### gVim / modern terminals
![Ruby and NERDTree](https://cloud.githubusercontent.com/assets/10374559/23333137/b86efaa0-fb86-11e6-8c06-813f81c1f9bb.png)
![Editing HTML and CSS](https://cloud.githubusercontent.com/assets/10374559/23344709/459972a2-fc81-11e6-9b50-c432d998caef.png)

*Code samples [1](http://sandbox.mc.edu/~bennet/ruby/code/), [2](https://tmtheme-editor.herokuapp.com/), [`nerdtree`](https://github.com/scrooloose/nerdtree)*

### Terminals with limited color support

#### Fixed 256 colors
![Terminal on Debian with 256 colors](https://cloud.githubusercontent.com/assets/10374559/23342967/e61e28c6-fc63-11e6-9ccf-d6189b9e1b61.png)

#### Fixed 8/16 colors
![Terminal on Debian with 16 colors](https://cloud.githubusercontent.com/assets/10374559/23341713/0e8dd778-fc4d-11e6-8430-b11f161305d7.png)

## Color Palette

![Color Palette](https://cloud.githubusercontent.com/assets/10374559/23341312/1961f416-fc45-11e6-83ba-d7180c5fdd6d.png)

## Installation

### 1) Download

Simply as any other Vim plugins: download manually or follow the standard procedure of your plugin manager:
*  [Vundle](https://github.com/gmarik/vundle)
 ```
 Plugin 'tomasiser/vim-code-dark'
 ```
*  [vim-plug](https://github.com/junegunn/vim-plug)
```
Plug 'tomasiser/vim-code-dark'
```
*  manual

   copy all of the files to `~/.vim` (or `$HOME\vimfiles` on Windows) directory

### 2) Enable in `.vimrc`

Add the following line to your `.vimrc`:

```
colorscheme codedark
```

If you have [`vim-airline`](https://github.com/vim-airline/vim-airline), you can also enable the provided theme:

```
let g:airline_theme = 'codedark'
```

### 3) Terminal support

#### 3.1) If you use gVim / a modern terminal
:+1: The colorscheme will work out of the box. No need to setup anything else!

#### 3.2) If the colors seem to be wrong
If your terminal supports 256 colors (see [this script](http://www.robmeerman.co.uk/unix/256colours) if you want to test your terminal), you **may need to set `t_Co` to 256** and [possibly also reset the `t_ut` value](http://vi.stackexchange.com/questions/238/tmux-is-changing-part-of-the-background-in-vim) in your `.vimrc` before setting the colorscheme:

```
set t_Co=256
set t_ut=
colorscheme codedark
```

(Additionally, if you don't want to or cannot use `t_Co`, you can `let g:codedark_term256=1`.)

#### 3.3) If your terminal only supports 8/16 colors

:exclamation: Before following those steps, first try step 3.2) - maybe your terminal does support 256 colors!

If your terminal does not support 256 colors, you may want to change your terminal colors:

##### 3.3.1) Some Unix terminals
Clone [`base16-shell`](https://github.com/chriskempson/base16-shell/) into `~/.config/base16-shell`:

```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

Then copy a script from this (`vim-code-dark`) repository (`base16/templates/shell/scripts/base16-codedark.sh`) into `~/.config/base16-shell/scripts`.

Following the instructions from [`base16-shell`](https://github.com/chriskempson/base16-shell/), you should now modify your `~/.bashrc` or `~/.zshrc` (depending on your shell) and insert the following lines:

```
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
```

Now start a new shell and type the following command: `base16_codedark`.

You should now be able to use Vim with your new colorscheme.

##### 3.3.2) iTerm2
iTerm2 should actually support 256 colors, try setting `Report Terminal Type` to `xterm-256color` and follow step 3.2). If it does not work, you can manually modify your terminal colors in settings (`CMD+i`, Colors tab) following the [color palette picture](#color-palette). You will have to choose which color to use as red, blue etc. according to your personal preferences.

##### 3.3.3) PuTTY
PuTTY should actually support 256 colors, try following [steps on StackOverflow](http://superuser.com/questions/436910/emulate-256-colors-in-putty-terminal). If it does not work, run `base16/templates/putty/putty/base16-codedark.reg` to modify your registry, then run PuTTY and load `codedark` in the session list. This will modify your PuTTY terminal colors.

## FAQ

### The background color in my terminal is wrong when there is no text!
Try resetting the `t_ut` value in your `.vimrc` as [described here](http://vi.stackexchange.com/questions/238/tmux-is-changing-part-of-the-background-in-vim):
```
set t_Co=256
set t_ut=
colorscheme codedark
```

### What is and how to enable the conservative mode?
If you don't like many colors and prefer the **conservative style of the standard Visual Studio**, you can try the conservative mode with reduced number of colors. To enable it, put the following line to your `.vimrc` *before* setting the scheme, like so:

```
let g:codedark_conservative = 1
colorscheme codedark
```

### Something is broken but I know how to fix it!
Pull requests are welcome! Feel free to send one with an explanation!

### Why does file syntax not look exactly like in Visual Studio Code?
Because Vim uses different syntax rules. This is just a colorscheme for vim, not a syntax definition.

### My favourite language has wrong / bad / awful colors!
There are a lot of syntax definitions with different highlight groups. Feel free to send a pull request with additional highlight groups!

### What setup can I see on the first screenshots?
Screenshots come from gVim on Windows with the following font options and [`vim-airline`](https://github.com/vim-airline/vim-airline) enabled.

```
set enc=utf-8
set guifont=Powerline_Consolas:h11
set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
```

