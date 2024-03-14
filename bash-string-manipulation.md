String Manipulation In Bash
===========================

Manipulating strings with bash.

## String Length

```
    STR="hello world" # 11 characters
    echo ${#STR} # prints 11
```

## Substring Extraction

```
    # indexing starts from 0
    STR="0123456789"
    
    echo ${STR:1} # prints 1-9
    echo ${STR:1:4} # prints 1-4

    # print from rhs
    echo ${STR:-1} # prints everything

    echo ${STR: -1} # prints 9

    echo ${STR: -2} # prints 89
```

## Further Reading

- https://tldp.org/LDP/abs/html/string-manipulation.html
