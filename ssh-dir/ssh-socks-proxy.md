Dynamic Port Forwarding And Socks Proxy
=======================================

Let's say Bob's computer is running ssh server. Alice can use ssh to tunnel her
internet traffic through Bob's computer.

```
                                               [internet] 
                                                   ^
                                                   |
 	                                      <192.168.43.254> 
                                                 [bob]
            ________________NETWORK________________|	
           |
        [alice]
```

```
	ssh -N -D 8888 aliceB@192.168.43.254
```

Alice can configure her web browser to tunnel traffic through socks port 8888.

## Tunnel any tcp traffic using `tsocks`

Read `/tsocks-use-socks-tunnel.txt.md` for more.
