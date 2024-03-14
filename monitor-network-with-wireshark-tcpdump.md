Network Monitoring With Wireshark/tcpdump 
=========================================

## adb Port Forwarding And Monitoring

```
    adb forward tcp:31337 tcp:31337
```
### On Phone
```
    $ tcpdump -i 'not port 1337' -s 0 -w - | nc -l -p 31337
```

### On Computer
```
    $ nc localhost 31337 | wireshark -i - -k -S
```

### Or Over ssh
```
    ssh <severname> "sudo tcpdump  -v -p 'not port 8022' -s 0 -w -" |wireshark -i - -k
```

# WireShark

## Color Codes
Goto view > coloring rules.

## Filter
```
    tcp 
        type "tcp" in "filter bar"
    
    WITH <IP> ADDRESS   
        ip.addr == <ipv4 addr>

    WITHOUT <IP> ADDRESS
        !(ip.addr == <ipv4 addr>

    WITH DESTINATION <IP>
        filter by destination ip
        ip.dst == <ipv4 addr>
        
        WITHOUT
        
        !(ip.dst == <ipv4 addr>

    PORT
        tcp.port == <port>

    [source] https://wiki.wireshark.org/DisplayFilters
```

## Packet Inspection
```
    Protocol:
    ---------
    Select coloum 
     >In packet window click on "User Datagram Protocol." 
        or
     >Transmission control protocol 
        shows:
            Source Port
            Dest Port
```

## EXTRA
```
    tshark:
    extract dns queries

    unique dns queries:
    tshark -r _capture_.pcapng -Y "dns.flags.response == 0" -T fields -e dns.qry.name -e dns.qry.name | sort |uniq
```

# tcpdump

## Filterout All IPs In Private Network

```
    tcpdump 'not (src net (10 or 172.16/12 or 192.168/16) and dst net (10 or 172.16/12 or 192.168/16))'
     
    tcpdump 'not (src net (10 or 172.16/12 or 192.168/16)'
```
