IRC with Weechat
================

WeeChat is a `tui` irc client.

## Usage

### exit weechat
```
    /exit
```
### exit chat/room
```
    /part
```

### add a server
```
    /server listfull
    /server add libera irc.libera.chat
    /server add libera irc.libera.chat/6697 -ssl -autoconnect
    /server add chatspike irc.chatspike.net/6667,irc.duckspike.net/6667
    /server copy libera libera-test
    /server rename libera-test libera2
    /server reorder libera2 libera
    /server del libera
    /server deloutq
    /server raw
```

### connect to an irc server
```
    /connect libera
```

### join a channel
```
    /join #channel
```

### private message
```
    /query <username>
```

### Navigation

- Next buffer/channel: alt+left/right arrow
- To switch to nth buffer use alt + n
- To switch between buffers that are merged use ctrl+x see [^4]

### Key Bindings[^5]

```
     ^r        search the current buffer
```

### list open channels in server:
```
    /list
```

### Mouse support
Press and hold shift for usual mouse support.

### Change nickname[^0]
```
    /set irc.server_default.nicks comma,separated,list,of,nicks
    /set irc.server.[SERVER_NAME].nicks "
```

### Scroll[^1]
```
    disable auto scroll:
    /set buflist.look.auto_scroll -1
```

### NickServ

### Autojoin

### EXTRA TO BE ADDED
check what`/window` does.


## Weechat Configs
Setting up weechat in private (~/) setting. Check `.config/weehcat` for configs.
Weechat core is unusable without plugins. You need to edit `.config/weechat
/weechat.conf`. See [^2] for more.

## Further Reading


[^0]: https://superuser.com/questions/122936/how-do-i-change-weechats-default-nick
[^1]: https://weechat.org/files/doc/devel/weechat_user.en.html
[^2]: https://weechat.org/files/doc/stable/weechat_quickstart.en.html#core_vs_plugins
[^4]: https://github.com/poljar/weechat-matrix/issues/137 Switch between buffers
[^5]: https://weechat.org/files/doc/stable/weechat_user.en.html#key_bindings_search_context
