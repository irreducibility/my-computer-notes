Wget
====
## Commandline Options

```
	-e robots=off : ignore robots
	--recursive: download the entire Web site under <url>
	--domains <url>: don't follow links outside <url>
	--no-parent: don't follow links outside the <url>'s directory 
	--page-requisites: get all the elements that compose the page (images, CSS and so on)
	--html-extension: save files with the .html extension
	--convert-links: convert links so that they work locally, off-line
	--restrict-file-names=windows: modify filenames so that they will work in Windows as well
	--no-clobber: don't overwrite any existing files (used in case the download is interrupted
			and resumed)
	-nH	remove website name

	#see cutdir in manpage

	-4	force ipv4 address
	-6	force ipv6 address
	--warc-file	output as warc file
	-p	download all required files to properly display a webpage
	-k	convert links
```


## Download A Complete Webpage

```
	wget -p -k -U <user-agent> <url>
```

## Limit Dowload Rate

```
	wget --limit-rate=100k <url>
```	

It will limit download rate to 100KB/s.


## Download A Website Recursively:

```
	wget -e robots=off -m -k -K -E --no-check-certificate <url>
```

Or in long format

```
	wget \
		--recursive \
		--no-clobber \
		--page-requisites \
		--html-extension \
		--convert-links \
		--restrict-file-names=windows \
		--domains website.org \
		--no-parent \
		<url>
```
This command downloads <url> recursively.

## User Agents

```
	Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0
```
