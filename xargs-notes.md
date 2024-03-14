Xargs Notes
===========

## Introduction

Xargs provides *piped* inputs for programs that can not take inputs
from *pipes*. One example is `mkdir`. To make `mkdir` can be made
to use inputs from pipe using `xargs`.

```
	echo /tmp/newdir | xargs mkdir
	# this will create /tmp/newdir
```

By default Xarg takes from pipe and passes it to command ran with xarg.

```
	echo "dir1 dir2 dir3" | xargs -t mkdir
	# -t verbose
```

## Command Line Options

```
    -t      verbose
    -n      number of arguments to command
```

## Download Files In Parallel

```
	cat url.txt | xargs -n 1 -P 4 wget
	# -n number of argument to pass
	# -P number of process to run
```

See [2] for more.

### Further Reading

[1] [https://shapeshed.com/unix-xargs/](https://shapeshed.com/unix-xargs/)
[2] https://muras.eu/2010/05/21/Parallel-downloads-with-wget/
