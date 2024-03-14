Rclone
======
Rclone allows data transfer between local machine and cloud storage.
It can also mount cloud storage as file system. Rclone supports
many cloud storages. 

Rclone has `rsync` like cli options.
 
Grab executables from here[^0] or compile the latest rclone release.

## Help
```
	$ rclone <subcommand> --help
```

## Configure Rclone

You can configure rclone with:
```	
	$ rclone config
```
See [^1] for more.

Once configured cloud storage with rlcone, various files
operations can be done on cloud storage.
	
List configurations:

```	
	$ rclone config show 
```	
## Rclone Subcommands

See [^1]

```
	$ rclone <subcommand> <named-remote>:<path>

	subcommand:

	lsf	list files and directories
	rmdir	remove directory
	mkdir	create a directory
	copy	copy files between source and destination
	sync	sync destination with source, modifies only
		destination
	md5sum	generate md5sum
	about	print storage quota information
	delete  delete a file
```

## Rclone Command Line Options

```
    --stats  10s, 1m # show network stats
```

### Get Cloud Storage Quota Information

```
	$ rclone about <named-remote>:
```
	
### List Files In Cloud Storage

```
	$ rclone lsf <named-remote>:<path>

	ls		
	lsl	list long info
	lsd	list directories only
	lsf	list files and directories
```

### Sync Files From Cloud To Local Computer

```
	$ rclone -P sync <named-remote>:<path> <local-path>
	
		-P show progress 
```

### Sync Files From Local Computer To Cloud Storage

```
	$ rclone -P sync <local-path> <named-remote>:/<path>

	#same with copy
```

## Mount Cloud Storage

You can mount cloud storage on your computer and use it as
regular storage drive. Gdrive and amazon s3 seems to have 
best (data) transfer speeds. See [^2] for more.

```
	rclone --cache-dir /tmp/  --vfs-cache-mode writes \
		mount <named-remote>: <mount_point>
	
	options
	#see [2]
	--cache-dir /tmp		cache path
	--vfs-cache-max-size 2G		max cache size
	--vfs-cache-max-age 1h0m0s	max age of cache files
```

Note: Once mounted on local machine usual file operations can be
performed on cloud storage. On slow networks it difficult to tell
when a file is copied successfully. On slow/non-persistent networks use
`rclone` subcommands to do file operations. For example, use `rclone sync`
or `rclone copy` to copy files. Though mounting storage makes it easier
to look for files.

To unmount mounted storage, use

```
	fusemount -u <mount point>
```

Note: vfs cache is created only when file is being modified. Also use set
`--cache-dir` some where persistent, in case rclone fails to upload files
it will do it next time.

Extra

```
rclone --log-level INFO --stats 10s --cache-dir $HOME/rcache/ --vfs-cache-mode \
    writes mount <remote>:/ <mount dir>
```

## Further Reading

- https://forum.rclone.org/t/is-there-a-fastest-configuration-for-google-drive/12260/20
  Transfer files between two cloud services(remotes). 

[^0]:[rclone downloads](https://rclone.org/downloads/)
[^1]:[https://rclone.org/docs/](https://rclone.org/docs/)
[^2]:[rclone mount/]([https://rclone.org/commands/rclone_mount/)
[^3]:[rclone password recovery](https://forum.rclone.org/t/how-to-retrieve-a-crypt-password-from-a-config-file/20051)
