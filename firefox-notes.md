Firefox
=======

## Shortcuts
```
    New tab: ^t
    Open new window: ^n
    Open new private window: ^SHIFT + p
    Switch to next tab:  ^TAB
    Switch previous tab: ^SHIFT + TAB
    Reopen closed tabs: ^SHIFT + t
    Open bookmark manager (firefox library): ^SHITF + o
    Bookmark current tab: ^d

    In Address Bar
    Search Bookmarks: *SPACE

    Screenshot: ^SHIFT s
```

## CLI Options
```
    --private-window    start firefox in private window
    -P <profile>        start firefox with <profile>
    --headless          headless mode
    --screenshot        grab a screenshot of <url> in headless mode
```

## Take Screenshot With Firefox Headless

```
    pfirefox [--window-size 1280,720] --headless --screenshot /tmp/a.png 'https://example.com'
```

## \*Warning\*

Firefox (sometimes) leaks IPv6 info. Try disabling it. 

```
    about:config -> search ipv6 -> set network.dns.disableIPv6 true
```

## Addons

- [cookie editor](https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/).
- [dark background light text](https://addons.mozilla.org/en-US/firefox/addon/dark-background-light-text/)
    dark mode.
- [image block](https://addons.mozilla.org/en-US/firefox/addon/image-block/).
- [wayback machine](https://addons.mozilla.org/en-US/firefox/addon/wayback-machine_new/)
    archive.org wayback machine.
- [adblocker ultimate](https://addons.mozilla.org/en-US/firefox/addon/adblocker-ultimate/).
- [tranquility reader](https://addons.mozilla.org/en-US/firefox/addon/tranquility-1/)
    distraction free reader view. Strips webpage of unnecessary contents.
- [savepage we](https://addons.mozilla.org/en-US/firefox/addon/save-page-we/) save
    page in a single html file.
- [readability based reader view](https://addons.mozilla.org/en-US/firefox/addon/readability-based-reader-view/)
    distraction free reader view. Based on firefox readability. Strips webpage of unnecessary contents.
- [single file](https://addons.mozilla.org/en-US/firefox/addon/single-file) save webpage in a single html file.


## Further Reading

- https://www.bitestring.com/posts/2023-03-19-web-fingerprinting-is-worse-than-I-thought.html
