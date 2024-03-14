Qemu PC Simulator
=================


## Installation

```
    sudo apt install qemu-system
```
## Options

```
    -display    <type>
    
            curses  Display VM using curses
            vnc Display VM using gtk
            gtk
    
    -m      <memory>
            512M
```

See qemu manpage for more.

## Examples

### Start A Qemu Machine
```
    qemu-system-i386 -display curses -drive file=disk.raw -m 512M

    # qemu will boot from disk.raw and display using curses
```

### Boot An ISO Image

```
     qemu-system-x86_64 -display curses -drive media=cdrom,file=<image.iso>
```

Boot ISO image with kvm enabled

```
qemu-system-x86_64 -enable-kvm -m 1024M -cpu host -smp cores=4 <disk image>
```

## Shared Folder[^0]

```
    -virtfs local,path=/path/to/share,mount_tag=host0,security_model=passthrough,id=host0
```

## Windows VM

See [2] for more. Create qcow2 image file.

```
    qemu-img create -f qcow2 WindowsVM.img 25G # there is where windows will be
    # installed
```

Run windows installer using qemu

```
qemu-system-x86_64 -enable-kvm \
        -cpu host \
        -drive file=WindowsVM.img,if=ide \
        -net nic -net user,hostname=windowsvm \
        -m 1G \
        -monitor stdio \
        -name "Windows" \
        -boot d -drive file=WINDOWS.iso,media=cdrom
```

[0]: https://superuser.com/questions/628169/how-to-share-a-directory-with-the-host-without-networking-in-qemu
[1]: https://techpiezo.com/linux/shared-folder-in-qemu-virtual-machine-linux/
[2]: https://fishilico.github.io/generic-config/sysadmin/qemu.html
[3]: https://wiki.gentoo.org/wiki/QEMU/Windows_guest Run window
[4]: https://wiki.qemu.org/Documentation/Networking networking 
