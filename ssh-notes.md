SSH Notes
=========

## SSH Command Line Options
```
    Options:
    	-4  Force ipv4 connection
	-6  Force ipv6 connection
        -i  Identity file
        -p  port number on which server is
            listening
        -v  verbose
        -X  for using gui applications on the
            server
        -C  request compression
	-N  do not execute remote command
	-q  supress dignostic messages
```

## Connect to ssh server
```
        ssh [-i <identity-file>] [-p port] \
                <username>@<address>
```

When connected to an interactive ssh session, launch programs under screen/tmux.
This is helpful specially for unreliable internet connection.

## SSH host config .ssh/config
```
        ... 
        Host    <named-host>
        #you will use this as argument to ssh
        Hostname    <address-of-server>
            User    <username>
            IdentityFile <ssh-private-key>
            #for password less login
            IdentitiesOnly yes
            #(or no)
            Port portnumber
        ...

        Now login using 

        $ ssh <named-host>
```
See man ssh_config for more.

## Send commands
To send commands instead of interactive ssh session

```
    ssh <named_host> "<command> opt1 opt2..."
```

`<command>` will run on the server, stdout and stderr will be shown to the client.
You can utilize this to transfer files.

### Ways To Files Transfer Using Command Send

From remote server to localhost
```
    # transfer tar of a directory
    # tar outputs on stdout
    ssh <named_host> "tar -czf - <directory>" > /tmp/<output>.tar.gz
    
    or

    # copy a file
    ssh <named_host> "cat <file>" > /tmp/<output>
```

From localhost to remote server
```
    # copy a file
    cat <file> | ssh <named_host> "cat - > <newfile>"

    # In <named_host> cat reads from stdin and redirects it
    # to <newfile>

    or

    # copy a directory
    tar -zcvf - <directory> | ssh <named_host> "tar -xvf -"
    
```

## Read More

- [ssh remote port forwarding](ssh-dir/ssh-remote-port-forwarding)
- [ssh local port forwarding](ssh-dir/ssh-local-port-forwarding)
- [ssh keygen](ssh-dir/ssh-keygen)
- [socks proxy](ssh-dir/ssh-socks-proxy)
- [transfer files](ssh-dir/ssh-files-transfer)

## Further Reading
- https://www.redhat.com/sysadmin/ssh-proxy-bastion-proxyjump
  Access server through bastion servers.
- https://www.blinkingcaret.com/2017/01/18/brief-ish-explanation-of-how-https-works/
- https://serverfault.com/questions/997124/ssh-r-binds-to-127-0-0-1-only-on-remote
  Bind forwarded ports.
- https://words.filippo.io/dispatches/whoami-updated/
- include multiple ssh configs https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one
