Kindle Setup (KT3 8th gen)
==========================

## Kual extensions:
- [koreader](kindle/koreader.md): ebook reader application.
- kterm : a terminal emulator.
- usbnetwork : enables networking over usb/wifi.
- screensavers : custom screen savers.

```
    Files are saved in:
    /mnt/us/linkss
```

## Disabled/Removed/Replaced
- `/usr/sbin/tmd`: transfer manager demon
    used for updates/sync. uses lot of bandwidth.
    after replacing this and changing /etc/hosts file
    kindle is not making any request (dns/http).
- `/etc/hosts`: redirecting several url to localhost.
    this won't work if kindle tries ip directly instead
    of dns.
- `/usr/bin/ota`: 
    sends bug report. compiles a tar in /mnt/us/documents 
    recording virtually everything (crash log, you may want
    to inspect). and don't know what it does with it
    later. it might be
    responsible for updating kindle. replacing tmd
    prevents updates so far. still replace ota.

## USBnet 
https://www.mobileread.com/forums/showthread.php?t=351585

```
/etc/network/interfaces
-----------------------
        allow-hotplug enxee4900000000
        iface enxee4900000000 inet static
                address 192.168.15.201
                netmask 255.255.255.0
                broadcast 192.168.15.255
```
