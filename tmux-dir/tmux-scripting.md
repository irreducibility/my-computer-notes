tmux Scripting
==============

tmux is highly script-able like GNU screen. Every tmux subcommand can be passed
directly to tmux from shell, like

```
    tmux list
```

or subcommands can be passed to ":" prompt in tmux or it can be bind to a key
combination.

## Getting Help

```
    tmux <subcommand> --help
```

## Create A New Named tmux Session

```
    tmux new-session -s <session name>
    # -s session name
    # -d detach on creation
```

## Attach A Session

```
    tmux attach -t <session number/name>
    # -t target session
    # -r read only mode
```

##  
