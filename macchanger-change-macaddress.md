Mac Address Changer
===================

## Install macchanger

```
	sudo apt install macchanger
```

## Show Current Mac Address

```
	macchanger -s interface
```
or 
```
	ip addr
```

## Change Mac Address

To change the mac address of a wifi device first make sure the wifi device is
down. Then run

```
	macchanger -A interface
	# get a random mac address
```

Now bring wifi back online.
	
