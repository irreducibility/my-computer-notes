ed Text editor
==============

ed is line based text editor. VIM, sed, awk etc. are descendants of ed.

## Index

- Read sed-notes.md for information on sed.
- Read grep-notes.md for information on grep.

## Write A Text File With ed

```
    touch <file>
    # create an empty file

    ed <file>
    # open <file with ed
    # this will open ed prompt
```
ed expects commands on it's prompt

```
    # ed commands
    p     print line, ,pn will print entire document with line number
    <n>   goto nth line
    d     delete line
    <n>d  delete nth line
    a     append text to current line
    .     . with on empty line will exit append mode
    s//   regex substitution on current line, sed like syntax
    w     write buffer to file
    q     quit ed
```

## Delete A Line With Word 
```
    /hello/d
    # this will delete first line with word "hello"

    g/hello/d
    # delete all lines containing word "hello"
```
## The Substitution Command

Syntax

```
    [address]s/pattern/replacement/flag
    # pattern is a regular expression
    # replacement is text to be replaced with
    # // are delimiters
```

Flags
```
    g   replace all matching pattern in current line 
```

### Example

```
    s/hello/world/g
    # this will replace all occurances of hello with world
    # in current line
```

```
    g/word/s/pattern/replacement/g
    #-----   ---------------------
    # replace each "pattern" in a line on every line containing
    # word "word"
```

## Script ed

ed editor has ability to edit a file according to a script. Therefore
ed is an extremely programmable editor.

