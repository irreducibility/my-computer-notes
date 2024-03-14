Curl
====
## Options
```
         -x        curl with proxy
                   -x socks5://address:port
                   -x http://address:port

         -A        set useragent

         -o        output file

         -r,--range   download remote file with range
                      in n-m(in bytes)

         -I,--head    get remote file info
     
```


## Curl With Proxy

```
    HTTP proxy:
        curl -x http://localhost:8081 <website>
    Socks proxy
        curl -x socks5://localhost:1081 <website>
```

## Request File Size info[^1]

To get remote file size type

```
    curl -sI <url>
    # -s silent
    # -I head, --head
```

## Download a part of a file

To download a part of a remote file with `curl` use `--range|-r`
flag.

```
    curl --range 9-100 <url>
    #this will download 10-101 bytes of remote file
```
This can be extremely useful for files with slow download speeds.
Or to continue download after an interpreted internet connection.

Note that although most servers support this feature(range), but
there are also servers, such as `python http` server, that don't
support it.

## User agents[^2]
```
    Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36
```

[^1]:[remote file size](https://stackoverflow.com/questions/4497759/how-to-get-remote-file-size-from-a-shell-script)
[^2]:[user agent list](https://developers.whatismybrowser.com/useragents/explore/)
