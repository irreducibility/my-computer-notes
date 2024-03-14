GDB : The GNU debugger
==================


## GDB TUI

Show source code and assembly code
```
	(gdb) layout [split| src| next| prev|asm]
	#switch using "^ + 1,2"
```

To close gdb tui type `tui disable`.

## REMOTE DEBUGGING

To debug binary build for target machine(assuming different
architecture).

### On target(remote) computer

Get the compiled executable for target machine. On target
	machine launch `gdbserver`:

```
	gdbserver <ip>:<port> <binary>
```

### On build machine

Make sure `gdb-multiarch` is installed.

Build executable for target machine with debugging
	enabled. Then push executable on to target machine. Launch `gdb-multiarch` and load the compiled binary:

```
	(gdb) file <binary>
```

This will load the binary. Connect remote (target)  machine

```
	(gdb) target remote <ip>:<port>
```	

You are now ready to debug the binary.
