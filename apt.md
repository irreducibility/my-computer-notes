APT Notes
=========

### Apt Download Packages With dependencies

```
	apt-get download $(apt-rdepends <package>|grep -v "^ ")
```

or

```
	PACKAGES=<package>

	apt-get download $(apt-cache depends --recurse --no-recommends --no-suggests \
		  --no-conflicts --no-breaks --no-replaces --no-enhances \
		  --no-pre-depends ${PACKAGES} | grep "^\w")
		   # note : this downloads a lot more packages than required
```
Look here[^1] for more.


### Use A Different sources.list

```
	apt -o "Dir::Etc::sourcelist=/path/to/your/sources.list" source dos2unix
```

Look here[^2] for more.

### Remove Dependency Issue

This will break apt. Edit `/var/lib/dpkg/status`[^3]. `/var/lib/dpkg/status` is a
package log file.


[^1]:[download all dependencies](http://web.archive.org/web/20220726072933/https://stackoverflow.com/questions/13756800/how-to-download-all-dependencies-and-packages-to-directory)
[^2]:[use different sources.list](https://www.warp.dev/blog/what-happens-when-you-open-a-terminal-and-enter-ls)

[^3]:[ignore unfullfilled dependencies](https://unix.stackexchange.com/questions/404444/how-to-make-apt-ignore-unfulfilled-dependencies-of-installed-package)
