W3M Web Browser
==============

w3m is a text based browser. On Xterm it can display images.

## Key Bindings
```
        Use vim keybindings to navigate
        
        H       help
        
        ^h      view history
        
        ESC + a     add bookmark
        ESC + b     open bookmarks
       
       	u	show link url
        U       edit url, update url
        ^u      clear url in field # like in bash shell
        c       show current address
        i       show image address
        u       show target address
        NUM[    go to NUMth link
        
        T       open document in a new tab
        }       switch to next tab
        {       switch to previous tab
        ^q      close current tab
        
        B       go back one page
        s       switch buffer, go back and forward pages
        
        v       view source
```

## Configuration

w3m is highly configurable web browser. Edit values in ~/.w3m/config to
customize w3m.

Note:
Change the following configs

- User Agent

- https://wiki.archlinux.org/title/Xterm

## Proxy Setup

Using wrapper like "torify" is a better option than pproxy. As it by default
tunnel all traffic through socks5 proxy.

As of 2023 w3m does not support socks proxy. Use tsock or torify to tunnel
through socks proxy. Alternative use pproxy to convert socks5 -> http proxy.

```
        python3 -m pip install pproxy
        # install pproxy

        pproxy -v -l http://localhost:9999 -r socks5://localhost:8888
        # connect socks proxy with http proxy
```

Also add 

```
$HOME/.w3m/config
-----------------
        http_proxy localhost:9999
```

## Further Readings

- Jump to nth link https://unix.stackexchange.com/questions/251946/jump-to-link-in-w3m
