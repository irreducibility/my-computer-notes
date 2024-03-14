Install Packages Under Home Directory
=====================================

## Options 
- Compile source with desired "prefix".
- Download precompiled packages and extract them to local
   directory.
- Use Appimage package

## Download Precompiled Packages

### For debian based distros:

```
	apt download <package> 
				#to download <package>.deb
	dpkg -x <package>.deb . 
				#this will extract packaged files
				#to local directory
```

(To download package with dependencies see: apt.txt)

Dynamically linked softwares may have problems loading shared libraries preventing
software from running. It is possible to tell Linux shared library's path by setting
`LD_LIBRARY_PATH` variable. Add `export LD_LIBRARY_PATH=/librarypath` to bashrc to
let Linux know which library path to use.

WARNING: make sure you have downloaded packages from valid repository, i.e. shared
library versions are compatible with your operating system. Using incompatible shared
library versions will lead to situation when softwares won't work on your computer.
Downloadig binaries from OS's current repository should be preffered to prevent
dependency conflict.

A workaround would be to write loader script to load program with `LD_LIBRARY_PATH` set.
Allowing software with different shared libraries to co exist.
