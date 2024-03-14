Linux Namespaces
================

Linux namespaces are ways to isolate resources.

## Types
- PID Namespace: Isolate processes.
- NET Namespace: Isolate networks.

# this is incomplete, don't know what the following mean

## Related
- jail-chroot-unshare.md

## Namespaces Related Commands

```
    lsns # list currently "accessible" namespaces
```

```
    findmnt # list all mounted filesystems
```

```
    nsenter # run command with a namespaces of existing process
```

## Namespaces

- Mount Namespace :
- PID Namespaces : Isolates process viewed by a container


## PID Namespace

Read [1] for more.

Create a PID namespace

```
    unshare --pid --fork --mount-proc /bin/bash
    
```

This will create a separate process namespace. `ps aux` will only show process
begin run under this particular namespace.

## NET Namespace

Read [1] for more.

Net Namespace isolates networks for processes for host network. For example

```
    unshare --net /bin/bash
    ip addr
    # only loop device
```

will create a namespace for the new shell, with no network.

### Connecting Two Network Namespaces

For this we need two virtual interfaces.

```
    # create a network namespace
    sudo ip netns add netnstest
```

## Further Readings

[1]: PID and NET Namespaces https://blog.quarkslab.com/digging-into-linux-namespaces-part-1.html
- Mount Namespaces https://www.youtube.com/watch?v=BwI89OnYm-4
- PID Namespaces https://www.youtube.com/watch?v=yznoyQlA8gM
