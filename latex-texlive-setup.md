Latex Setup
===========

## Download Texlive ISO

Download texlive installation ISO from
- https://www.tug.org/texlive/doc/texlive-en/texlive-en.html#opt-in-place
- https://tug.org/texlive/acquire-iso.html

## Steps to install texlive

- Mount <texlive>.iso

```
    sudo mount <texlive>.iso /tmp/<texlivemount>
```

Run texlive installer

```
    cd /tmp/<texlivemount>
    ./install-tl
```

Configure install directory and packages.

Then Add

```
/<installation path>/.texlive2021/usr/local/texlive/2021/texmf-dist/doc/man to MANPATH.
/<installation path>/.texlive2021/usr/local/texlive/2021/texmf-dist/doc/info to INFOPATH.
/<installation path>/.texlive2021/usr/local/texlive/2021/bin/x86_64-linux to PATH
```

The 3rd location contains latex executables.
