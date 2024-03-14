Gcloud sdk
==========

Gcloud sdk [download](https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-367.0.0-linux-x86_64.tar.gz) link [^0].

## Login to gcloud service
To login to gcloud serice use the following command:

```
	gcloud auth login --no-launch-browser
		# --no-launch-browser authenticate without launching browser
```

## Access gcloud shell 
The following connects to gcloud shell via ssh:

```
	gcloud cloud-shell ssh 
```

## Get HELP
To get help use:

```
	gcloud help <help>
```

eg:

```
	gcloud help cloud-shell ssh
		#for gcloud ssh documentation
```

## Configuration
Gcloud configuration:

```	
	gcloud config list #--all to list all config
	#list current config
	
	gcloud config set account <email>
	#this will activate config under <email>
```
Run `gcloud auth list` to see all authenticated accounts.

## Authentication
Manage authentication:

```
	gcloud auth

	gcloud auth <arg>

	<arg>:

	 	login --no-launch-browser
		#login on an headless machine
		#note you can login with multiple accounts

		list
		#list all accounts

		revoke <email>
		#logout  
```

### List authenticated accounts

Using gcloud cli with multiple accounts is possible. List
all authenticated accounts by running

```
	gcloud auth list
```

## Notes
Add keepalive in .ssh/config to make sure a persistent ssh connection.

## Further reading
- [gcloud docs](https://cloud.google.com/sdk/docs/install)
- [how cloudshell works](https://cloud.google.com/shell/docs/how-cloud-shell-works)
- https://lobster1234.github.io/2017/05/14/get-started-on-google-cloud-with-cli/

[^0]:[download link old](https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-367.0.0-linux-x86_64.tar.gz).
[^1]:[gcloud sdk docs](https://cloud.google.com/sdk/docs/install).
