tmux
====

## Introduction

tmux is a terminal multiplexer similar to gnu screen. tmux is fairly modern
compared to screen.

## List tmux Sessions

Create a new named `tmux` session

```
    tmux new -s <name>
```

```
    tmux list-sessions
```

or

```
    tmux ls
```

## Attach A tmux Session
```
    tmux attach
```
    
To attach a tmux session using id:

```
    tmux attach -t <id>
```

## Default Keyboard Shortcuts
```
    Command mode            ^b :
    Verticle pane           ^b %
    horizontal pane         ^b "
    switch pane             ^b up/down/left/right arrow
    create new window       ^b c    
    next window             ^b n
    prev window             ^b p
    detach tmux             ^b d

    scroll mode             ^b [ then q to quit scroll mode
```
## tmux Subcommands

Subcommands can be given in tmux ":" prompt or directly from shell using
`tmux <subcomand>`. To view help for subcommands run the following in shell

```
    tmux <subcommand> -h
```

```
    new-session <name>  create a named session
    list                list all sessions
    detach              detach session
    attach              attach a session
    new-window          create a new window
    split-window        split window horizontally
```

## Further Reading

[0] https://github.com/tmux/tmux/wiki
[1] https://unix.stackexchange.com/questions/758811/does-tmux-run-shell-support-interactive-shell
