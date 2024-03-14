Host Jump And Proxy Command
===========================

This document contains ways to jump through ssh server(s) to reach destination
server.

```
    [Local Host]
          |
	  |
          v
      [Jump S1]-- - - - -->[Jump SN]
                               |
                               |
                               v
                          [Target Host]
```

## Connect to Destination Server Using `ProxyJump`

Simplest way to achive this would be to use `ProxyJump`.

```
	ssh -J <JumpServer>[:port] <Destination>[:port]
```

Example

```
	ssh -i key1 a@jump[:port] -i key2 d@dst[:port]		
```

### Passing Through More Than One Jump Servers

```
	ssh -J <JumpServer1>, <JumpServer2>,... <Destination>
```

## `config file`

Note that both `ProxyCommand` directive and `ProxyJump` cannot be used together
for a host. 

```
	Host <Destination>
		Hostname <Destination ip>
		User username
		ProxyJump <JumpServer1>, <JumpServer2>...	

```
## Further Reading
- https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Proxies_and_Jump_Hosts
- https://defn.io/2019/04/12/ssh-forwarding/
