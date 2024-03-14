Mirror Android Screen On Computer
=================================

Requirements

- usb debugging enabled on android
- adb installed on computer	

## Mirror Screen

```
	sudo adb start-server 
	# starting adb server
```

List adb devices using
```
	adb devices
	# should list connected
```

Once android device is connected to the computer run

```
	scrcpy
```

This will start mirroring android screen onto computer screen.

## Further Reading
- https://news.ycombinator.com/item?id=37606643
- As webcam https://github.com/Genymobile/scrcpy/blob/master/doc/v4l2.md
