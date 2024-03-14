awk
===

awk belong to the family of ed, sed, vi. It is used to manipulating text. Awk
can read rule from a script and apply it on text.

Like its sibling sed, awk does it's operation on each line of a file.

## Hello World

```
    echo "" | awk '{ print "Hello World" }'
```

## The BEGIN And END Pattern

BEGIN pattern tells awk to perform tasks before reading any line.

END pattern tells awk to perform tasks after reaching last line of a file.

script.awk
```
    #!/bin/awk -f 

    BEGIN {
        print "hello world"
    }
    END {
        print "bye world"
    }

    {
        print $0
    }
```

```
    echo -e '1\n2' | awk -f script.awk
    # hello world
    # 1
    # 2
    # bye world
```

## The Main Loop

Main loop is something that is provided by awk and is run on each line. `{ print $0 }`
in `script.awk` the procedure that is executed by the main loop on each line of
given file.

## Pattern Matching

Pattern matching is done by regular expression (regex). Regex is placed between
/regex/. On matching a pattern, awk runs all matching body of instruction.

```
    /^$/ { print "this line in blank"}
    /[0-9]+/ { print "this line contains one or more integers" }
    /[A-Z]+/ { print "this line contains one or more upper case letters" }
```

## Fields And Records

awk assumes that its input is structured and delimited. In simplest case awk
takes each input line as record where each word is separated by a delimiter.

```
    Alice  Robinson 1234567890
```

### Referencing And Separating Fields

Field separating character can be set by giving `-F` flag to awk or

```
    BEGIN {
        FS = ',' # field separator
    }
```

```
    $0  all fields in a line
    $1  first field
    $2  second field
    ...
    $n  nth field
```

```
    # comma (,) is treated as space, see OFS
    { print $2, $1, $3 }
    # Robinson Alice 1234567890
```
