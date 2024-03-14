RSYNC
=====

## Command Line Options

```
	-P	show progress
	-a	archive
	-v	verbose
	-r	copy recursively
```

## Basic Syntax

```
	rsync <source> <destination>
```

Copy a file/directories using 

```
	rsync -P -avr <source> <destionation>
```

## Make A Backup Using Rsync

```
	rsync -a --exclude=.cache --progress /home/$USER /media/linuxbackup/home/$USER
```

## Rsync Over SSH 

### From Remote Server On To Local Machine

```
	rsync -a <remote-source-ssh> <local-destionation>

	rsync -a user@server:/files /tmp
```

See [1] for more.

[1]:https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories
