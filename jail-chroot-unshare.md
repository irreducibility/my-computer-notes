Jail Using chroot and unshare
=============================

- unshare allows to run programs with "namespaces" unrelated to its parent.
- chroot allows to run a program with given root directory.

## Examples

```
        unshare --uts bash
        # permission denied # unix time sharing

        unshare --user bash
        whoami
        # nobody
```

## Creating Jail

See [0].

```
        mkdir $HOME/rootfs
        
        # copy /bin /usr /lib /lib64 $HOME/rootfs

        unshare -r chroot $HOME/rootfs /bin/bash
```

## Running A Distro Under chroot Jail


```
```

## Further Reading

- https://www.linuxquestions.org/questions/linux-virtualization-and-cloud-90/chrooting-a-linux-distro-inside-another-839899/
  chroot a distro inside another
- [0] https://unix.stackexchange.com/questions/128046/chroot-failed-to-run-command-bin-bash-no-such-file-or-directory/416556#416556
