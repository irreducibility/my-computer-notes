GNU Grub
========

Grub bootloader has a simple shell. This shell can be used to boot from devices.

Press ESC on grub bootup to access grub shell.

## Commands

```
	ls	list contents
	cd	change directory
	loopback mount loop device
	cat	cat a file
```

## Examples

### Boot From USB

```
	ls

	(hd0,gpt1) (hd0,gpt2) (cd0)
```

Lets say (cd0) is the bootable USB. Let's set it as root.

```
	set root=(cd0)

	ls /
```
