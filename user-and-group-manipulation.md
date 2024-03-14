User And Groups
===============

## Create A User

```
	useradd -m <user>
	# -m create home
```

## Create A Group

```
	groupadd <group>
```

## Create A Directory To Be Used By Group Members

```
	groupadd <shared>
	mkdir /home/<shared>
	sudo chmod 2770 /home/<shared> # every member of group can modify files
	usermod -a -G <shared> <user1>
	# -a append
	# -G groups
```

## Further Reading
[0] https://askubuntu.com/questions/313089/how-can-i-share-a-directory-with-an-another-user
