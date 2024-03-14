Find
====

## Introduction 

find tool searches for files with given filename pattern and file attributes.

## Options

``` 
    -user       search by user(owner)
    -perm       search by permissions
    -type       search by file type
    -maxdepth   decend at most maxdepth level in a directory 
    -name       search by name case sensitive
    -iname      search by name case insensitive
    -newer      search files newer than a file
    -maxdepth   search maxdepth level in directory structure
    -size       search by size. more/less than given size.
    -exec	execute a command on outputs
```

## Search By Filename

```
    $ find . -iname "*.txt" 2> /dev/null
```

This finds all files ending with .txt in current directory,
and 'shows' absolute path of found files.

Note : When using `find` always place wild cards inside quotes.

## Search File By Permissions

```
    $ find / -perm -2 -type f 2> /dev/null
    # regular files with atleast write permission to user.

    -perm       permission
            
            -200 : files with permission atleast 200
            2000 : files with permission exactly 2000

    -type           file type
                    f regular files
                        d directory
```

## Search Files Newer Than Given File

```
    example:
    
    $ find . -newer <filename>
    # this will list files newer than <filename>
```

## Search Files By Given Size

```
    example:

    $ find <path> -size +20M
    # finds all files in <path> with filesize >= 20 megabytes.

    $ find $HOME/ -size -10k
    # search $HOME for files of size <= 10 kilobytes.
```

## Execute A Command On Output

```
	example:
	
	find <path> -iname "*.txt" -exec mv {} /tmp \;
	# {} is placeholder for output, \; tells where args for -exec stop
	# move all *.txt in current directory to /tmp
```

See [1] for more.

## Further Reading

[0] see man page
[1] https://www.baeldung.com/linux/find-exec-command
