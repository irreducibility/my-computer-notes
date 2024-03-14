Process Management
==================

## Show Process id 

To shows pid of program use

```
	pidof <program>
	# Shows pid of program	
	# /proc contains all the information about <program>
```

## List All Processes

```
	ps aux
```

## Kill A Process

### Kill By PID

```
	kill <pid>
	
	# options
	-l        list all kill signals
	-9        send kill signal
```

### Kill by process `program` name

```
	pkill <program>
```
