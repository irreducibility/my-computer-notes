Set Default User Interface
==========================

Set default user interface on boot.

### Set Text Only Interface

```
	systemctl get-default
	# shows current default interface
	
	sudo systemctl set-default multi-user.target
	# reboot
```
To launch gui from text console run `startx`.

### Set GUI As Default Interface 
```
	systemctl get-default
	# shows current default interface
	
	sudo systemctl set-default graphical.target
	# reboot
```
