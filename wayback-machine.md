Wayback Machine(Archive.org)
============================

## Save page
To save a <url>, make the following request:

``` 
    https://web.archive.org/save/<url>
    #on a web browser
```

## Wayback machine
To check a archived page on wayback machine use the
following url:

``` 
    https://web.archive.org/web/*/<url>
```

View oldest snapshot of a given url:

```
    https://web.archive.org/web/0/<url>
```

View newest snapshot of a given url:

```
    https://web.archive.org/web/<url>
```

## Fetch Archive Capture Index List, Archive CDX

```
    https://web.archive.org/cdx/search/cdx?url=<url>&Filter1=<filter1>&Filter2=<filter2>

    Filters:
        matchType  exact, prefix, host, domain
        limit      -N last N results, N first N results 
        from       after a time stamp yyyyMMddhhmmss
        to         until a time stamp yyyyMMddhhmmss
        mimetype   filter by file type
        
```
### Extra API Docs

- https://pywb.readthedocs.io/en/latest/manual/cdxserver_api.html
- https://support.archive-it.org/hc/en-us/articles/115001790023-Access-Archive-It-s-Wayback-index-with-the-CDX-C-API
- https://www.reddit.com/r/DataHoarder/comments/10udrh8/how_to_download_archived_content_from_the_wayback/
- https://sbdevel.wordpress.com/2016/03/18/cdx-musings/

## Firefox addon
[Wayback machine addon](https://addons.mozilla.org/en-US/firefox/addon/wayback-machine_new/)

## Further Reading

- https://archive.org/web/web-advancedsearch.php
- https://archive.org/post/1055220/how-to-query-for-all-the-websites-that-end-in-combr
    Advance wayback search using cdx server api
- https://github.com/internetarchive/wayback/blob/master/wayback-cdx-server/README.md
    Advance wayback search using cdx server api
- https://netpreserve.org/web-archiving/tools-and-software/
    Web archiving tools
- https://archive.org/developers/index.html
    Api information
- https://archive.li # No chaptha on this archive.today frontend

- for information on .warc file format read warc.txt.md
