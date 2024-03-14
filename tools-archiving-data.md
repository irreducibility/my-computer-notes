Tools Archiving Data
====================

## List All Mounted Filesystem With `df`

```
    df: 
        Displays filesystem Disk usage. 
    
        Options:
            for gnu (coreutils) df 
    
        -h  human readable
        -T  see filesystem
```

## List All Block Devices With `lsblk`

```
    lsblk:
        lists block devices.

```

## Split Files Into Smaller Chunks With `split`

```
    split:
        Splits files into smaller chunks.
        
        options:
        -b  chunk size
            4M : 4MBs
            1G : 1GB
            10K: 10KBs
            or in bytes

        --verbose

        Example:

        Split a big file into chunks of 400MiB.
        $ split -b 400M BigFile outputname
        
        To get original file back:
        $ cat outputname* > BigFile
```         

## Archive Data With `tar`

Tar is used to archive files and directories. It puts multiple files
into single file.

```
    options:
        -v  verbose
        -c  create 
        -f  output file, it can also be stdout 
        -r  append to archive
        -t  list contents of archive
        -z  compress 
        -x  extract
	-I  compression command to use
```

### Example:

Archives your file into `archive.tar`

```
	tar -cvf archive.tar yourfile(s)
``` 

List contents of archive    

```
	tar -tvf archive.tar
```
    
Archive and compress. The following will create an archive and compress
 it. You can still use `-t` to list it's contents

```
	tar -czvf archive.tar.gz yourfiles(s)
```

To extract created archvie use:

```
	tar -xvf archive.tar(.gz)
```

To extract specific file(archive member), The following will extract only
"member" from archive.tar

```
	tar -xvf archive.tar(.gz) member
``` 

Compress tar archive with a given command

```
	tar -cf archive.tar.zst -I zstd directory/
	# this will compress the tar archive with zstd
```
or
```
	tar -c directory -f /tmp/arhive.tar.zip -I zip
	# why would you even compress tar with zip
```


## Further Reading
