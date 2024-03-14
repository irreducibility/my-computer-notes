ADB : android debug manager
===========================

## Setup
To use adb with android you need developers option enabled in your
android device. Also you need a usb cable and adb application.

## adb server
On you computer run
```
	$ adb start-server #to start adb server

	$ adb devices -l #to list all the connected devices

	$ adb kill-server #to kill adb deamon
```

## adb shell
Once device is connect to your computer, launch adb shell using
```
	$ adb shell #/data/local/tmp is HOME
```

## adb push
To push files to android device use
```
	$ adb push ./<file> /data/local/tmp 
```
Where `/data/local/tmp` is on android's filesystem.

## Package management
To list packages installed on your android use:
```
	$ adb  shell pm -l
```

### To pull android package use
```
	$ adb shell pm path <package name>
```

This will show the path of `<package name>`. You can now pull
the package with

```
	$ adb pull <package path> <output path>
```

### To uninstall a package
```
	$ adb shell pm uninstall -k --user 0 <package name>
```

## Port forwarding
To forward a port type the following command on your computer
```
	$ adb forward tcp:<portoncomputer> tcp:<portonandroid>
```
