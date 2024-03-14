tsocks
======

tsocks can tunnel tcp traffic through socks proxy. Its
helpful to tunnel applications which doesn't have socks
proxy tunnel feature.


## Usage

```
	tsocks	<command>
```

## Example

```
	tsocks curl ipinfo.io
	
	tsocks ssh myserver
```

## Configuration

Edit `/etc/tsocks.conf` and change the following values
accordingly.

```
	server = 127.0.0.1
	server_type = 5
	server_port = 8888
```
