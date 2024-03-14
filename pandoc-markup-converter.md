Pandoc
======

Pandoc is a markup converter. It can convert to and from html, plain text,
markdown, tex and more.

## Supported Formats

```
    markdown, tex, html, plain text
```

## Convert `html` To `plain text`

```
    pandoc -f html -t plain http://fsf.org

    # it will convert the fsf's home page into a readable plain text

    cat index.html | pandoc -f html -t markdown 

    # it will convert html to markdown
```

## Converting From `markdown` To `html`

```
usage:
    pandoc -f markdown -t html <input.md>
```

```
Options:
    -f  from <format>
    -t  to <format>
    -s  treat input file as standalone file
    --metadata  add metadata
    --metadata-file add metadata from file
    -o  output file 
    --template <template file>
```

### Template

```
usage:
     pandoc -s -f markdown -t html <markdown file> \
           --template <template file> \
           --metadata-file <metadata>.json \
           -o output.html 
```

See [^1] and [^2] for more.


## Further Reading

- https://rsdoiel.github.io/blog/2020/11/11/Pandoc-Metadata.html
- https://pandoc.org/MANUAL.html#templates

[^1]:[rsdoiel's pandoc guide](https://rsdoiel.github.io/blog/2020/11/11/Pandoc-Metadata.html)
[^2]:[Pandoc Template](https://pandoc.org/MANUAL.html#templates)
