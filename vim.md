VIM
===

VIM is a modal editor, meaning it has different modes of editing
a file. In each mode a given *key binding* has a different
meaning. Best thing about VIM, you can control it from keyboard only.

## Modes
- Normal mode
- Insert mode
- Visual block mode
- Visual mode
- Command mode

### Normal mode

This is the default mode of VIM. When you are done inserting
text to your file, you switch to Normal. You do so by hitting ESC
key. While in this mode you can use `h,j,k,l` to move cursor.
Switching to other modes requires switching to normal mode.

```
    Key Bindings: Normal mode
                                                            
    ESC             switch to normal mode   
    i               switch to insert mode
    v               switch to visual mode
    ^v              switch to visual block mode
    :               command mode    

    h,j,k,l         To navigate left,down,up,right (move 
                    character at a time)
    w               move forward a word
    b               move backward by a word
    NUM + G         Goto beginning of NUMth line in the file
    G               Goto beginning of last line 
    A               Go to end of the line cursor is and
                    switch to insert mode
    0               Go to beginning of a line.
    /               Search (regex)
    d + w           deletes a word from cursor position
    d + d           deletes current line
    p               paste after cursor position
    P               paste at cursor position
    o               create a new line below cursor
    O               create a new line above cursor  
    r               replace the character at cursor position
    u               undo
    ^r              redo
```

### Insert Mode

To get into insert mode you hit `i` while in normal mode.
In this mode you can insert text to your file. To exit insert
mode you press ESC. Obviously this switches mode to normal
mode.

```
	Key Bindings: Insert mode

	^r	paste using registers in insert mode
	^P	suggest/auto complete with previous match
	^n	select next match from ^P
	^x	text completion mode
```

### Visual mode [^1]

You can switch to visual mode by hitting `v` from normal mode.
This mode allows you to select text for cut/copy(yank).
In this mode the cursor movement key bindings are used to
select text. Once selected, texts can be cut/copied.

```
    Key Bindings: Visual mode
                                                             
    h,j,k,l         select text in h,j,k,l direction, one
                    character at a time
    w               select text in forward direction one word
                    at a time
    b               select text in backward direction one
                    word at a time.
    y               yank(copy) selected text
    x               cut selected text
    d               delete/cut selected text    
```

After cut/copy text, vim switches to normal mode. You can
paste text in buffer at cursor position by pressing `p`.

### Visual Block mode

Switch to this mode by pressing `^v`. This is similar to
visual mode except it allows text selection in vertical
direction.

To insert a block of text select where the block of text is 
to be pasted -> ^I -> paste/replace/type text to be inserted.

### Command mode

You switch to this mode by hitting `:` in normal mode.

```
    Commands
                                                            
    :w              write to disk
    :q              quit editing file
    :q!             quit without saving
    :wq             write and quit
    :saveas <name>  saveas name
    :tabnew [file]  open a new vim tab [open file in a
                    new tab
    :tabnext        move to next tab
    :tabprevious    move to previous tab
    :set tw=NUM     set text width/for text wrapping/justify
    :set tw=65
    :set textwidth=65
    :set spell      set spellcheck, move cursor to spelling
                    error and press 'z' for suggestion.
    :set nu         show number line
    :set nonu       turn of number line
    :set formatoptions+=t
    :reg or :registers	list all registers
    :!<shell command> run commands from within VIM
    :terminal       Open terminal inside VIM/ v8+
```

## Command Line Options
```
    -R  open files in read only mode
```
## Addition Notes

- vim-clipboard-registers.md
- setup-vim-for-programming.md

## Further reading

- https://opensource.com/article/19/2/getting-started-vim-visual-mode
- http://web.archive.org/web/20220718052141/https://stackoverflow.com/questions/5136902/vim-textwidth-has-no-effect :set tw problem
- [VIM Book](http://www.truth.sk/vim/vimbook-OPL.pdf)
- https://vi.stackexchange.com/questions/4489/how-to-add-space-on-multiple-lines-when-pressing-spacebar-without-extra-configure
- [Let Vim Do The Typing](https://www.youtube.com/watch?v=3TX3kV3TICU)

## Filetype plugin:

- https://vi.stackexchange.com/questions/21355/multiple-vimrc-files-for-different-file-types-in-vim

[^1]: https://opensource.com/article/19/2/getting-started-vim-visual-mode
