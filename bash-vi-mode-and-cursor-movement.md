Bash Tips And Tricks
====================

## Edit Command Before Running

### Default Keybindings
By default the following keybindings[0] are available for cursors movement 

```
    alt + b   move one word backward
    alt + f   move one word forward
    ctrl + b  move one character forward
    ctrl + f  move one character forward
```

Moving by a word is much faster than moving by a character. Once your cursor 
is in position you can use

```
    alt + d  to delete a word in cursor position
    ctrl + d  delete a character in cursor position
```
### vi Mode
If you have vi keybinding setup with bash, you can type ESC key to enter vi
mode. Here is how you can move your cursor with vi keybindings[1]

```
    h    move left by a character
    l    move right by a character
    b    move back by a word
    w    move forward by a word
    dw   delete word at cursor
    x    cut a character at cursor
    u    undo
    r    replace a character
    v    enter vi editor to edit the command
```

To set bash with vi keybinding run

```
    set -o vi # help set
    # sets vi style line editing
```
## Further Reading
[0] TLCL page 81-83
[1] https://dev.to/brandonwallace/how-to-use-vim-mode-on-the-command-line-in-bash-fnn 
[2] https://www.gnu.org/software/bash/manual/html_node/Readline-Interaction.html 
