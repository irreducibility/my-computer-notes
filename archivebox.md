ArchiveBox
==========

## Start ArchiveBox

Create a directory and inside the directory run

```
	archivebox init --setup
```

## ArchiveBox Config ^[0]
```
[SERVER_CONFIG]
SECRET_KEY = <secret key> 
BIND_ADDR = 0.0.0.0:8080

[ARCHIVE_METHOD_TOGGLES]
SAVE_WGET = False
SAVE_WARC = False
SAVE_PDF = False
SAVE_SCREENSHOT = False
SAVE_DOM = False
SAVE_SINGLEFILE = False
SAVE_MERCURY = False
SAVE_GIT = False
SAVE_MEDIA = False
SAVE_ARCHIVE_DOT_ORG = False
SAVE_READABILITY = False

```

## Further Reading
[0]: https://github.com/ArchiveBox/ArchiveBox/wiki/Configuration
[1]: https://github.com/ArchiveBox/ArchiveBox/wiki/Configuration#general-settings
[2]: https://github.com/ArchiveBox/ArchiveBox/wiki/Configuration#archive-method-toggles
