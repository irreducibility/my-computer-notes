Branches In Git
===============
- Create new branch
- Switch branch
- Hard reset a branch
- Merge branch

## Create A New Branch

To create a new branch run

```
    git checkout -b <branch name>
    # this will create a branch from latest commit
```

To create a new branch for some commit from history run[1]
```
    git log # print commit history
    git checkout -b <branch name> <commit checksum>
    # this will create a new branch from commit with <commit checksum>
```

## Switch Branches

To switch branches run

```
    git branch # list branches
    git checkout <branch>
    # Switch working branch to <branch> 
```
Stash or commit before switching to a different branch[3].

## Hard Reset A Branch

Get rid of everything till a commit by

```
    git reset --hard <commit checksum>
    # reset to <commit checksum>
```

## Merge Two Branches

Switch to the branch where merge is to be applied 

```
    git merge <branch>
```

## Further Reading
[0] https://www.nobledesktop.com/learn/git/git-branches
[1] https://stackoverflow.com/questions/4114095/how-do-i-revert-a-git-repository-to-a-previous-commit
[2] https://barbagroup.github.io/essential_skills_RRC/git/branching/ # merge branches
[3] https://stackoverflow.com/questions/5531362/why-git-keeps-showing-my-changes-when-i-switch-branches-modified-added-deleted
