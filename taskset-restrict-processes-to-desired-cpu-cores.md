Taskset
=======

`taskset` restricts a process to desired cpu core(s).


## Example

```
	taskset --cpu-list 0 <program>
	#run's program on 0th core
	
	taskset --cpu-list 0-n <program>
	#run's program on 0 to n cores
```
	
## Further Reading	

- See man page
