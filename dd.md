Make Image Using dd
===================

dd is used to copy block files.
## Options
```
        bs=N        read and write block size to write at a time
                    1M
            1K
        count=M     copy M blocks of byte size N
            if=     Input file
        of=         Output file
                    Default is stdout
        status=     [progress]

```

## Example

```
        dd if=/dev/zero of=gentoo-root.img bs=4k iflag=fullblock,count_bytes count=10 \
            status=progress
        # if=/dev/zero copy zero bytes to gentoo-root.img
        # bs=4k copy blocks of 4k at a time
        # count=10 copy 10 blocks
        # status=progress show progress
```
