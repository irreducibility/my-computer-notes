GNU screen
==========

GNU screen is a terminal multiplexer. You can find screenrc written by Brad Sims here[^5].

## Configuring Screen
Read configuring-gnu-screen.md 

## Command Line Options

```
    -ls     list sessions
    -S  start screen session with given name
    -r  reattach screen session
    -x  reattach an attach screen session without 
        detaching the attached session
```

## Default Keybindings

```
    ^a ESC      copy mode and "scroll" with jklh or scroll
                with mouse
    ^a :        enter command mode
    ^a d        detach session
    ^a c        create a new window
    ^a NUM      switch to NUMth window (0-9)
    ^a n        next window? 
    ^a BACKS    PACE previous window 
    ^a p        previous window
    ^a |        split vertical (create vertical pane)
                (by default there will be nothing in the newly
                created pane)
    ^a S        split horizontal
    ^a TAB      move to newly created pane
    ^a "        window selection list 
    ^a '        window selection prompt
    ^a X        remove pane
    ^a h        screenshot of current window 
    ^a a        <keybinding> to control screen inside screen[6]
```

## Attach `screen` Sessions

``` 
    $ screen -r sessionname
```

## List All `screen` Sessions

``` 
    $ screen -ls
``` 

## Named Sessions
To start a named screen session start screen `-S` followed by desired session name. 

```
    $ screen -S mysession
```

## Renaming A Session

To rename a session enter the command mode by pressing `^a :` and using command
"sessionname <desiredname>".

## Renaming Window

Enter command mode and type `title <desiredname>`.


## Screen Subcommands 

Screen has subcommands that can be run by enter ":" prompt in screen (^a + :)[7][8].

```
    screen      create a screen window
    quit        quit a screen session
    split       split horizontally
    sessionname set a session name
    detach      current session
    eval        run screen subcommands
```

### Running Screen Subcommands Right From Shell

```
    screen -dmS <session name> # run screen as daemon
    screen -S <session name> -X screen "vim" # create a new window on session
                                             # <sessino name> and launch vim
    screen -S <session name> -X quit # quit <session name> screen
    screen -S <session name> -X detach # detach <session name>
```

## Scroll/Copy/Paste[^4]

Text from screen buffer can be viewed and copied. To enter scroll mode press 
`^a ESC`. Scroll mode has vim like keybinding for movement (k for up, j for
down, h for left and l for right). Mouse can also be used to scroll.

To copy, move the cursor to the beginning of the text. To start selecting hit
`space` and to stop stop selecting hit `space`. This will copy the selected text.
To paste copied text press `^a ]`.

Alternatively `copy mode` can be entered by hitting `^a [` to utilize scrolling
with mouse.

While in scroll mode:
``` 
    Y   Copies a line from the beginning to the end of the
        line
    y   Copies a line from the beginning to the cursor 
        position. Press "space" to stop selecting
    space   start/stop selecting text
```
## Environment Variables
```
    SCREENRC   the screenrc file
    SCREENDIR  where the sessions will be saved.
```

## Screen Password

```
    screen -X password
    # this will prompt for a password
    # crypted password is saved to copy buffer. Paste it to .screenrc
    # to use it in all new sessions
```

## Further Reading
- https://superuser.com/questions/244299/gnu-screen-how-to-update-dynamically-the-title-of-a-window
- https://www.gnu.org/software/screen/manual/html_node/Dynamic-Titles.html#Dynamic-Titles
- https://web.mit.edu/gnu/doc/html/screen_9.html
- https://web.mit.edu/gnu/doc/html/screen_11.html
- https://web.archive.org/web/20150603050847/http://www.kuro5hin.org:80/story/2004/3/9/16838/14935
- https://web.archive.org/web/20180217022747/http://www.guckes.net/screen/
- https://wiki.sdf.org/doku.php?id=screen
- https://www.lumensoutdoors.org/posts/2004-03-24-screen.html
- https://lists.gnu.org/archive/html/screen-users/2005-04/msg00040.html Brad Sims .screenrc
- https://stackoverflow.com/questions/16111548/how-to-copy-the-gnu-screen-copy-buffer-to-the-clipboard

[4]: https://web.mit.edu/gnu/doc/html/screen_11.html
[5]: https://ia601407.us.archive.org/15/items/screenrc/screenrc.txt
[6]:  https://serverfault.com/questions/592365/how-to-create-a-screen-session-within-an-existing-screen-session
[7]: https://www.gnu.org/software/screen/manual/html_node/index.html
[8]: https://www.gnu.org/software/screen/manual/html_node/Command-Summary.html#Command-Summary
