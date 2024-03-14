File Transfer Over ssh
======================

## Using Pipe

### With tar
```
	tar -cf - /path/to/directory | ssh remote "tar -xf -"
```

### With dd
