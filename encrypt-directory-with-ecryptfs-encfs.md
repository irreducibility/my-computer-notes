Encrypt dirctory
================

## Ecryptfs
### Create EcryptFS stacked filesystem[^0]

```
	ecryptfs-setup-private --nopwcheck --noautomount
		#follow the instructions
```
This will create 
```
	~/.Private	:	files will be stored here
	~/Private	:	fs will be mounted here
	~/.ecryptfs	:	contains config files
```

## EncFs

Encfs is easy (than `ecryptfs`) to use. Install `encfs`.
Run:

```
	encfs /absolutepath/<encrypted dir> /absolutepath/<mountdir>
	# this will create/mount encrypted dir to <mountdir>

	fusermount -u /absolutepath/<mountdir>
	# to unmount
```

## Cryfs

## Further reading
1. `https://nekopy.github.io/luks.html`
2. `https://nekopy.github.io/ecryptfs.html`
3. `https://blog.elcomsoft.com/2021/11/protecting-linux-and-nas-devices-luks-ecryptfs-and-native-zfs-encryption-compared/`
4. `https://www.cryfs.org/comparison` : cryfs is optimized for cloud storage application.

[^0]:[https://wiki.archlinux.org/title/ECryptfs](https://wiki.archlinux.org/title/ECryptfs)
[^1]:[encfs linux-magazine](https://www.linux-magazine.com/Issues/2019/224/Simple-Security)

