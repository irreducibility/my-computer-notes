Create Media Playlist With XSPF
===============================

xspf(XML shareable playlist format) is a markup language 
to create playlists. xspf playlists can be shared (with or without
media) between devices. xspf files can be used to stream media. 
See [0] for basic xspf markup. 

VLC is a nice cross platform media player that can read
xspf format. 


<!--perhaps better than m3u-->

## Markup
Directory structure:
```
Music
├── Album1
│   └── song-1.mp3
├── Album2
│   ├── song-2.mp3
│   └── song-3.mp3
...
├── Playlist-1.xspf
├── Playlist-2.xspf
├── Playlist-3.xspf
...
├── Album-n-1
│   └── song-1.mp3
└── Album-n
    └── song-1.mp3 
```

XFPS markup:
```
<?xml version="1.0" encoding="UTF-8"?>
<!--save as _playlist_.xfps-->
<playlist version="1" xmlns="http://xspf.org/ns/0/">
  <trackList>
    <track>
      <title>song-1</title>
      <location>Album1/song-1.mp3</location>
    </track>
    <track>
      <title>song-3</title>
      <location>Album2/song-2.mp3</location>
    </track>
    <track>
      <title>song-3.mp3</title>
      <location>_absolutePath_/Album2/song-2.mp3</location>
    </track>
    <!--...-->
    <track>
      <title>extenal media</title>
      <location>http://www.example.com/music/bar.ogg</location>
    </track>
  </trackList>
</playlist>
```

## Further reading
```
[0]: https://web.archive.org/web/20220915034637/https://en.wikipedia.org/wiki/XML_Shareable_Playlist_Format

```
