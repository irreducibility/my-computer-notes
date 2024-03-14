Setup VIM For Programming
=========================

## Set VIM Behaviour Based On Language

Behaviour of VIM can be changed according to the programming language being
used. To achieve that one needs to add vim plugins. Add the following line 
to `.vimrc`

```
$HOME/.vimrc
------------
filetype plugin on
```

And add

```
$HOME/.vim/after/ftplugin/python.vim
------------------------------------
syntax on
set nu
set tw=80
;vim config for python
```

## Ctags

Ctags allows definition viewing. Make sure `ctags` is installed. Then in root of
project directory run

```
        ctags -R . # generates tags for currect source directory
```

This will generate a `tags` file. VIM will use this file for definition
referencing.

To view definition of a keyword, place the cursor on the keyword and press `^]`.
This open the definition of the keyword. To go back hit `^t`[0].

```
        ^]      view definition or tag jump
        ^t      return to previous location after a tag jump
```

## Resources

[0] https://vim.fandom.com/wiki/Browsing_programs_with_tags
