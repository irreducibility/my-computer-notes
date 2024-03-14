Git
===

## Read
- git branching [git-dir/git-branch.md]

## GIT HELP

To see help, use

``` 
    $ git <command> -h
    #for short help
```

or

```
    $ git help <command>
    #for detailed help
```

## GIT REPOSITORY

Getting started with a git repository. 

### Clone an existing repository

``` 
    $ git clone <url>
``` 

### Create repository

```
    $ mkdir my-git-repo
    
    $ cd my-git-repo
```

Then use git init to create a "git repository skeleton".

``` 
    $ git init   
``` 

## RECORDING CHANGES USING GIT

Files inside repository are in one of the two states, tracked or 
untracked. 

Tracked files are the files that were in last snapshot of the 
repository as well as newly staged files. These can be unmodified, 
modified or staged. 

As you edit files, Git sees them as modified, because you have 
changed them since your last commit.

```
UNTRACKED    UNMODIFIED    MODIFIED    STAGED

   |----[add the file]-------------------->

                |-[edit file]->

                              |--[stage]-->
    
<-[remove-file]-|
            
                 <---------[commit]-------|

        [source git-scm.com]
[This diagram summerises cycle of a file in a git tracked repository]
```

### Check the status of git repository

``` 
    $ git status
    #it will show status of the git repo i.e. untracked/modified/staged and commit needed         
    #use -s option `git status -s` to show short status.
```

Create files inside the repository. And add files to git tracking (stage):

``` 
    $ git add <files to add>
```
NOTE: this staged file will later get `commited`. If you 
make changes to the file, you'll need to stage the file one more time.
    
### Check files that are not staged

Use `diff` to check files that are changed but not staged

```
    $ git diff
``` 

## SSH BASED AUTHENTICATION[^0]

0. Clone remote repository with ssh address or add ssh address to config file.

1. Generate and upload a ssh public key to your git server.

2. Try authenticating with git server using corresponding private key.

```
            ssh -v -i <private key> git@<git server>

            #ssh -v -i <private key> git@codeberg.org
            #ssh -v -i <private key> git@github.com
``` 

3. Add ssh credentials to ssh config file (~/.ssh/config):

Example:
```
        For codeberg:       
        ...
        host codeberg.org
        Hostname codeberg.org
            User git
            IdentityFile ~/.ssh/<private key>
            IdentitiesOnly yes
        ...
``` 
```
        For github:
        ...
        host github.com 
        Hostname github.com
            User git
            IdentityFile ~/.ssh/<private key>
            IdentitiesOnly yes
        ...
```

4. Now you are good to go. Now you can perform git operations
on your server with ssh based authentication.

## SETUP A GIT SERVER:

### On server

Install git and ssh server on your server. Then create a git repository
([see](#create-repository))

``` 
            $ mkdir <repo>.git
              #.git extension is not nessesary
```     

```
            $ cd <repo>.git && git init --bare
              #this would creat empty repository
```

### On local machine 

Make sure git and ssh client is installed. Then add your ssh
credentials to  `~/.ssh/config`:

```
        ...
        host <name>
        Hostname <address>
        User    <username>
        IdentityFile ~/.ssh/<private key> #for key based authentication
            IdentitiesOnly yes
        ...
```

Try cloning the repository on server to make sure your setup
is working.

```
        $ git clone username@server:/<location>/<repo>.git
``` 

## BRANCHES:

### Cloning specific branch

```     
    git clone -b <branch> <remote repo>
```

## Git repository setup

```
        echo "readme" >> README.md
        git init
        git add README.md
        git commit -m "first commit"
        git branch -M main
        git remote add origin git@github.com:<your repo>
        git push -u origin main
```

## SELF HOSTED GIT SERVER WITH WEB BASED FRONT END

```
        gitea       github like
        codeberg    based on gitea
        sourcehut   simple web frontend, doesn't use js.    
```


## Setup With Github

### pgp key Signatures [^1]

- copy gpg public key to github.com/settings -> ssh and gpg keys.
- run `git config user.signingkey <keyid>` to use gpg key for signature.
- run `git config commit.gpgsign true` to automatically sign commits.

### ssh key Signature
- git config --local gpg.format ssh
- git config --local user.signingkey /PATH/TO/.SSH/KEY.PUB



### Multiple Account Setup

In .ssh/config file set `Host <mygit>` and in `repo/.git/config` change remote
origin url to `git@<mygit>:repo`. This will allow working with multiple github
accounts.

## REFERENCE:
1. https://git-scm.com/book/en/v2/ READ sec 2.2 diff


[0]: [How to tell git which private key to use](http://web.archive.org/web/20220713052923/https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use)
[1]: https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
