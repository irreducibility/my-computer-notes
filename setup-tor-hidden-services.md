Setup Tor Hidden Services
=========================

## Tor Configuration File

### Load custom configuration file

```
	tor -f _custom-tor-config_
```

## Edit Tor Config[^1]

Add following lines to the tor config file

```
	HiddenServiceDir /var/lib/tor/my_website/
	#set appropriate permissions to this dir
	HiddenServicePort 80 127.0.0.1:80
```

Tor will listen at virtual port 80 and redrect connections to
127.0.0.1:80.

Restart tor service with new tor config. Service running on port 80
should be accecible over tor. Tor hostname can be found inside
*HiddenServiceDir*.

Run

```
	torify curl -v _onion-url_
```

Visit your onion url to make sure service listening on port 80
is accessible over tor.

[^1]:[onion-services-setup/](https://community.torproject.org/onion-services/setup/)
