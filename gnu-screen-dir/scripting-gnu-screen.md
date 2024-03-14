Scripting GNU screen
====================

GNU screen has subcommands that can be run directly by invoking screen for any
shell. This allows scripting of GNU screen. See [0] for more subcommands.

## Examples 

### Create A Named Screen Screen And Daemonize It

```
    screen -dmS foo
    # create a screen session named foo
```

### Create A New Window In Given Screen Session With A Program Running

```
    screen -S foo -X screen bash -c "echo \"hello world\"; read"
    # -X send subcommand to screen
    # opens a new window and prints "hello world" to screen and waits for user 
    # to print enter

    # note screen uses `exec` to run a subprocess. Therefore it is bash is
    needed if shell builtins are to be used.
```

### Attach A Screen Session

```
    screen -ls # list available sessions
    screen -S foo -r # attach session
```

### Quit/Terminate A Session

```
    session -S foo -X quit
```

## Further Reading

[0]: https://www.gnu.org/software/screen/manual/html_node/index.html
