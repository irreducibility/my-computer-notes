Download Youtube Videos With Youtube-dl
=======================================

## Options:
```
	youtube-dl -F _url_
	#show avialable media qualities
```	

## Download Youtube Audio
```
	youtube-dl -x --audio-format best --audio-quality 0 <url>
```

## Download Youtube Video With Details
```
	yt-dlp -f best --write-description --write-info-json \
		--write-annotations --write-sub --write-thumbnail <url>
```
## Extra
- download m3u8 files https://gist.github.com/tzmartin/fb1f4a8e95ef5fb79596bd4719671b5d
