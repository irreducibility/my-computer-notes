List ports being used
=====================

## List open ports:

```
	netstat -tulpn
	
		or
	
	ss -tunlp4
	
		-t - Show TCP ports.
		-u - Show UDP ports.
		-n - numeric host. Do not try to resolve hostnames.
		-l - Show only listening ports.
		-a - show all ports
		-p - Show the processes that are using a particular socket.
		-4 - Show only IPv4 sockets.
```

## List open ports with process using them:

```
	netstat -punta
```
