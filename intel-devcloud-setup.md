Intel Devcloud Setup
====================

Signup for intel devcloud. Intel gives free account for four months and does
not require sensitive personal information(even temp mail is allowed)

## ONE API (see intel/oneapi.png)

	Sign up for ONE API.
```
	...	
	properties:

	120 days of access
	192GB RAM
	220GB File storage

	CPU:
		Many
	    #Intel® Xeon® Scalable 6128 processors
	    #Intel® Xeon® Scalable 8256 processors
	    #Intel® Xeon® E-2176 P630 processors 
		
	
	Connect with jupyter notebook.
	https://devcloud.intel.com/oneapi/get_started/
...


	cpu core on nodes:
	12,16,24,64,128,160			
```
## Getting Started with ONE API

Goto [1]  and follow the
instructions.

- Automated configuration: download and run setup script[1]. Once everything is
  setup connect to intel server using

```
		$ ssh -v devcloud
```

This should should connect to login2 server.

- Manual configuration: download ssh private key from [1] and add the following to ~/.ssh/config

```
	...
	Host intel_
		Hostname ssh.devcloud.intel.com
		User guest
		IdentityFile ~/.ssh/devcloud-access-key-xxxxxx.txt
		IdentitiesOnly yes


	Host intel
		User u164493
		IdentityFile ~/.ssh/devcloud-access-key-xxxxxx.txt
		IdentitiesOnly yes
		ProxyCommand ssh -T -v intel_
	...
```
Now run

```
		$ ssh -v intel
```	
This should should connect to login2 server. 
	
## Settting up X2Go(VNC alternative)
See [3] for more. 
Some compute nodes have X server installed(for example s001-n137). You can connect
X2Go server is already running on them.

Check if x2goserver is running

```	
	$ systemctl status x2goserver.service
```	

Install x2goclient on your local machine using

```
	$ sudo apt install x2goclient #if it exists in your repo.
```

Then forward x2Go port to local port using ssh port forwarding

```
	$ ssh -L 4002:<node name>:22 devcloud #local port forwarding
	# forward port remote 4002 on local port 22 (see local port 
	# forwarding)
```


## Sumbit A JOB And Connect To Compute Nodes 
see [3] for more. login2 node is only a bastion node with bare minimum
resources. To connect to a more powerful node a job submission is required.
Submit a job using qsub.

```
	$ qsub -q batch@v-qsvr-fpga -I -l nodes=s001-n137:ppn=2 #1
```	
This will log in to s001-n137 node. Note that filesystem containing
home directory is mounted on every node.

```
	...	
	Features:
	
	internet access
	64 core cpu
	~190GB ram
	...
```

## VNC SETUP
Some compute nodes have X server installed (for example s001-n137). You can
use X applications using X2Go, or setup VNC server and connect using VNC client.

### On server:
Make sure you are on a node with Xserver installed. Get tightvnc executable (setup
environment variables appropriately) then

```
	$ tightvncserver
```

VNC server will start on a display and port (say on 5901).
	
### On Local Machine:

Get a vncviewer (for example tiger vncviewer). Then connect to the server with
local port forwarding, pulling the port of vncserver to local computer.

```
	$ ssh -NvL 5901:<servername>:5901 devcloud
		
	-N	prevents login	
```
then launch tiger vncviewer and in field "vncserver" put localhost:5901.

## Job Sumbmissions

qsub accepts jobs as script(shell scripts, batch) and in interactive mode. 

```
	qsub options(see [4] and [6]):
		-I	submit job in interactive mode
		-l	resource list
		-d 	set working directory
		-q	destination(server, queue)
```
Logins to compute nodes is only possible after a job has been submitted using qsub. 

```
	$ qsub -q batch@v-qsvr-fpga -I -l nodes=s001-n137:ppn=2 #1
	# submit a job
```

### Accessing compute node interactively

```
	$ qsub -I ...
```
### Request a node by property

```
	$ qsub -I -l nodes=[num]:[property]:ppn=2 #see [8]
	# num is max two on devcloud
```	

### Request a node by name

```
	$ qsub -I -l nodes=[name]:ppn=2 
```

### walltime
	
Request time for job. 
```
	$ qsub -I -l nodes=[name]:ppn=2, walltime=HH:MM:SS
```
If a job exceeds a day then use walltime in DD:MM:HH:MM:SS format.

###  Delete Jobs

```
	$ qdel 	<jobnum>
```

### List Available Nodes
see [8] for more
	
```
	$ pbsnodes #lists all available nodes with their "property"
	
	-l free 	: 	list free nodes
		#apparently you can login interactively only on free
		#nodes
	-q <nodename>	:	show <nodename property>
```

See [3] section "Compute Node Features" for more info.

	
### List Submitted Jobs

```
	$ qstat
	 
	-f <job id>  : 	get full information about job
```

## HIGH CORE NODES

```
	node		core	memory 
	s002-n006	128
	s002-n00[1-6]	128  
	s001-n137	64	188G
```

## JUPYTER NOTEBOOK

Intel devcloud is also available through jupyter notebook web interface.


## NOTES
On compute nodes storage device mounted on /local is almost 10x faster than /home
although temporary.

## Further Reading
[0] https://devcloud.intel.com/oneapi/documentation/shell-commands/
[1] https://devcloud.intel.com/oneapi/documentation/connect-with-ssh-linux-macos/
[3] https://devcloud.intel.com/oneapi/documentation/shell-commands/
[4] https://devcloud.intel.com/oneapi/documentation/job-submission/
[5] https://devcloud.intel.com/oneapi/documentation/advanced-queue/
[6] https://www.jlab.org/hpc/PBS/qsub.html qsub manual.
[7] https://zhanggroup.org/docs/node26.html qsub notes.
[9] https://wiki.anl.gov/cnm/HPC/Submitting_and_Managing_Jobs/Advanced_node_selection
    ppn (proccesor per node)
[10] In devcloud, by default you login to underpowered login machine.
    This machine acts as a proxy to high power comuter "nodes", with
    different configurations. On these nodes you can submit jobs. Jobs 
    are killed after 6hrs (24hr max) on free devcloud accounts. Maximum 
    of two nodes are available.


