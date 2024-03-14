DNS And Nameserver Tools
========================

## Nameserver Lookup

- dig
- nslookup
- host

## dig

Dig is more versatile than other ns lookup tools. To see dns records

Syntax

```
    dig @<name server> <address> <type>
    dig                example.com ANY

    # show only answer section
    dig +noall +answer @1.1.1.1 <url> <type>
```

## nslookup

Queries name server to get info about <url>.

```
	$ nslookup <url>
```

## host

Resolves hostname to ip.

```
	$ host <url>
```
