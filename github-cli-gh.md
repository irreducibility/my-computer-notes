Github CLI
==========

Github cli is a free software released under MIT license.
Get a copy of source code and compile it.[^0]

## Authentication

```
	gh auth login
```
And follow the instructions to login. To logout use

```
	gh auth logout
```

## Github codespace

Github codespace is very much like gcloud shell. Except
gcloud shell provides 50hrs/week compute where as github
codespace provides 120hrs/month with caveats[^4].
See [^2] for more.

```
	gh codespace <command>
	
	list        list codespaces
	ssh         connect to a codespace using ssh
```

### Create a codespace 
```
	gh codespace create
```
Run the above command and enter a <username>/<repository> to work with.


### Delete a codespace

```
	gh codespace delete -c <codespaceName>
```


### Connect To Github Codespace Using SSH

```
	gh codespace ssh -c <codespaceName>
```
or

```
	gh codespace ssh -c <codespaceName> -- <sshFlags> <commands>
```

Where `<commands>` is command sent to server through ssh.
See [^1] for more.

### Stop A Running Codespace

```
	gh codespace stop -c <codespaceName>
```

### Port Forwarding

See [^3] for more on working with ports in codespace. List forwarded ports.

```
	gh codespace -c <codespaceName> ports
```

To forward a port (both ways), run

```
	gh codespace -c <codespaceName> ports forward <remotePort>:<localPort>
```

Once forwarded, a url will be given for the port.

### Port Visibility

Change a visiblity of port between private|public|org. If port visiblity is
set public, a url is given to the port. Anyone with the url can access the port.

```
	gh codespace ports visibility 8080:public #change port visiblity of port 8080
						  #to public
```


[^0]: [Official Github Repository](https://github.com/cli/cli)
[^1]: [gh ssh](https://cli.github.com/manual/gh_codespace_ssh)
[^2]: [connect to codespace using gh](https://docs.github.com/en/codespaces/developing-in-codespaces/using-github-codespaces-with-github-cli)
[^3]: [codespace port forwarding](https://cli.github.com/manual/gh_codespace_ports)
[^4]: [codespace usage limits](https://github.com/orgs/community/discussions/39697)
