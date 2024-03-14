Setting Console Fonts
=====================

## Set console font

Rememeber console doesn't support arbitary fonts.
```
	setfont <font-file>
```

If unsure, find files `*.psfu.gz` and run

```
	setfont <psfu.gz file>
```

### Make font change permanent
Copy `<psfu.gz file>` to `/usr/share/consolefonts` or
`/usr/lib/kdb/consolefonts`. Then add

```
#vconsole.conf
KEYMAP="us"
FONT="neep12x24" #change it appropriately
```

Or add `setfont neep12x24` to bashrc.

## Tools to create `psf` from bitmap font `bdf`

- `bdf2psf`
- check `https://github.com/mtatton/hackpsf/conv.sh` for steps to create psf.

## Show Console Font Charset

```
	showconsolefont
```
