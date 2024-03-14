sed Advanced Notes
==================

sed is a stream text manipulation tool. I descended from ed text editor and
therefore has similar commands. The difference is ed has an interactive
interface but can not editor files through io stream. Whereas sed can edit text
from io stream but does not have interactive interface.

## Index

- see ed-editor.md for information on ed line editor.

## sed Command Line Options

```
    -e      sed instruction script, directly from cli
    -f      sed script file
```

## Instruction/Commands

Instruction/commands are inherited from ed editor.

```
    s       substitution, "s/regex/replacement/flag"
```

### Substitution Flags
```
    p       print substituted lines
```


## Examples

See more ways to use sed instructions[1]
```
    sed -e "s/hello/world/g" -e "s/bye/world/g" <file>
    # runs two instructions on <file>
```

## References And Further Reading

[1] page 17, Sed&Awk, Dave and Arnold, O'Reilly
[2] For information on meta characters see
    page 30, Sed&Awk, Dave and Arnold, O'Reilly

