VNC Setup
=========

## Install A VNC Server

```
	sudo apt install tightvncserver
```

To start vnc server run `vncserver` command. This should start vnc server on the
computer. Note down the port on which vncserver is listening.

## Install Desktop Environment 

XFCE is a lightweight DE.

```
	sudo apt install xfce4 xfce4-goodies dbus-x11
```
## Client Side

tigervnc is a good vnc client. Install it using

```
	sudo apt install tigervnc-viewer
```

Run tigervnc and connect to VNC server.

## VNC On A Browser^[0]

novnc allows running vnc client in a browser. This setup requires a running vnc server.

```
	sudo apt install novnc

	/usr/share/novnc/utils/novnc_proxy --listen 8081 --vnc localhost:5900

	# 8081 : novnc listens on this port
	# 5900 : vncserver listens on this port
```

Open http://<servers ip>:8081 on your browser to access vnc.

## Take Screenshots^[1]
```
	xwd -root -out -display :0 screenshot.xwd

	# capture a screenshot of :0
```


## Further Reading

- https://www.cloudsigma.com/installing-and-configuring-virtual-network-computing-vnc-on-ubuntu-20-04/

[0]: https://www.kali.org/docs/general-use/novnc-kali-in-browser/
[1]: https://askubuntu.com/questions/226829/how-to-take-screenshot-of-an-x11-based-gui-from-a-text-terminal-such-as-tty1
