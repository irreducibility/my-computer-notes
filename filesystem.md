Filesystem
==========

Resources [^0]

### Identify Existing Filesystem

```
	lsblk -f
	
	or 

	df -hT #gnu version
```

### Create Filesystem

Make sure that the device of interest is unmounted.
To create a `ext4` filesystem run:

```
	mkfs.ext4 /dev/yourDiskPartition
	
	# -L	specify filesystem label
```

### Mount Filesystem

To mount filesystem use

```
	mount /dev/yourDiskPartition /destination
	
	# or 
	
	udisksctl mount -b /dev/yourDiskPartition
	# works without root privilage
```

### Unmount Filesystem

To unmount use:

```
	umount /destination

	# or

	udisksctl unmount -b /dev/yourDiskPartition
```

[^0]:[arch wiki filesystem](https://wiki.archlinux.org/title/File_systems)
