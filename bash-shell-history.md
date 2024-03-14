bash history
============

## Shortcuts and commands
```
	^r [string]
			#keep typing to till required history
			#doesn't work as expected
	
	history
			#print bash history

	!! 
			#repeat last run command, can be dangerous
	
	![num]
			#run nth command

	!-[num]
			#run -nth command

	history | tail -n 20| tac | cat -n 
	
			#last 20 history in reverse order with 
			#line number.
			#helpful when running !-[num]
```
For more information see man page.


## Do not save history
To prevent shell from saving cli history to disk you may use 
the following [^0]

1. `history -c #clears all history for current session, before exit`
2. `export HISTFILE=/dev/null #histfile is /dev/null`
3. `[space] before command #may not work on all systems`

## Further reading

[^0]:[ don't save bash history](https://stackoverflow.com/questions/9039107/dont-save-current-bash-session-to-history).
