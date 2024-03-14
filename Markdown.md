Markdown With Pandoc
====================

Markdown as a simple markup language. Because of its simple 
	and uncluttered syntax makes it suitable for taking
	text based notes.

Markdown syntax is not standerdised. 

## Converting Markdown to HTML

Convert markdown to html using:

```
	pandoc -f markdown -t html _file.md
```

Add a simple shell script to a directory included in `PATH`
and name it `markdown`.

```
	markdown : 

	#!/bin/sh
	#converts markdown to html
	pandoc -f markdown -t html $@
```

Convert markdown files to html using shell script `markdown`:

```
	$ markdown _file.md
```

## Markdown syntax (for html conversion)

```
Heading

	#        <h1>
	##       <h2>
	...
	######   <h6>
	
	===      <h1>
	---      <h2>

Code
	`...`    <code> #inline code

Code in a block

	```
	...      <pre><code>
 	```
```
