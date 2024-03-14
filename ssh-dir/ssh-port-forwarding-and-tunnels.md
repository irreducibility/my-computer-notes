SSH Port Forwarding And Tunnels
===============================

- SSH Remote Port Forwarding
- SSH Local Port Forwarding
- SSH Dynamic Port Forwarding [ssh-socks-proxy.md]

## SSH Remote Port Forwarding

### Forward Over To Remote Server over SSH

Let's say Bob's computer is running ssh server. If Alice wants to share access of
her locally running http server, she can forward her port to Bob's computer
using ssh remote port forwarding.

```
                                            <192.168.43.254>
                                                 [Bob]	  
            ________________NETWORK________________|	 	
           |						  
        [Alice]						 
     <192.168.43.70>				
<http server localhost:8080>				
```

Alice will connect to Bob's computer using ssh with port forwarding options

```
	   ssh -N -R <pb>:localhost:<pa> aliceB@192.168.43.254
	   # -N do not execute on remote computer 
       # -R remote port binding 
       # <pb> port on Bob's computer 
       # <pa> port on Alice's computer(8080)
      
       # Example
	   ssh -N -R 9080:localhost:8080 aliceB@192.168.43.254
```

Now Alice's http server can be accessed from Bob's computer(locally) on port 9080.

### Bind To A Remote Address[^1]
```
	   ssh -N -R <remoteaddress>:<pb>:localhost:<pa> aliceBb@192.168.43.254
```


## SSH Local Port Forwarding

### Forward Port Over SSH

Let's say Bob's is running ssh server on his computer. Further Bob has a http 
server running on port 9090 locally. If Alice wants to access of Bob's http
server she can forward port 9090 on Bob's computer to hers using ssh local port
forwarding. After the port forward Bob's http server will be accessible to Alice.

```
                                       <http server localhost:9090>				
                                            <192.168.43.254>
                                                 [Bob]	  
            ________________NETWORK________________|	 	
           |						  
        [Alice]						 
     <192.168.43.70>				
```

Alice will connect to Bob's computer with local port forwarding options
```
	ssh -N -L <port on Alice's computer>:localhost:<port on Bobs computer> \
        aliceB@192.168.43.254
    
    # Example
	ssh -N -L 8080:localhost:9090 aliceB@192.168.43.254
```

## Notes
- Any listening port can be port forwarded given remote server accepts port
  forwarding and given port on remote server is free.
- Connections to remote port (on Bob's computer) is forwarded to local port (on
  Alice's computer).

## Further Reading
[^1]:https://serverfault.com/questions/997124/ssh-r-binds-to-127-0-0-1-only-on-remote
