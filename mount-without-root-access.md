Mount Devices Without Root
==========================
The Debian Wiki shows several ways of doing this. Here's one way using the udisks2
package.

First, create a 'loop device.' This will allow us to mount the image file.

```
	udisksctl loop-setup -f $PATH_TO_IMAGE
	# Map file $PATH_TO_IMAGE with /dev/loop0.
```

Notice that above command mapped the image at /dev/loop0. However, if the previous
command had returned /dev/loop1, then replace /dev/loop0 with /dev/loop1 in all of
the following commands.

You might need to run this command if the block device we created is not automatically
mounted with the previous command

```
	udisksctl mount -b /dev/loop0
	# Mounted /dev/loop0 at /media/$USER/$IMAGE_NAME
```

You can look at files on the disk

```
	ls -l /media/$USER/$IMAGE_NAME/
```

You can unmount it when you're done

```
	udisksctl unmount -b /dev/loop0
	udisksctl loop-delete -b /dev/loop0
```

## GIO utility

## Rescan For USB
[1]
```
	udevadm trigger
```
## Further Reading
- https://unix.stackexchange.com/questions/32008/how-to-mount-an-image-file-without-root-permission/411510

[1] https://www.linuxquestions.org/questions/linux-general-1/rescan-for-usb-devices-754916/
  resan for usb device
[2] https://unix.stackexchange.com/questions/39370/how-to-reload-udev-rules-without-reboot
[3] https://smarttech101.com/how-to-mount-a-drive-in-linux/ about gio and udiskctl usage
