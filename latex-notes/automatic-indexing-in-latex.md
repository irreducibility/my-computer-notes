Indexing In Latex
=================

## Requirements

Include "imakeidx" package to use automatic indexing in Latex. Latex will
automatically add word index at the end of the document. For hyperlinked indices
use "hyperref" package.

```
	\usepackage{imakeidx}
	\usepackage{hyperref}
```

In the preamble add

```
	\makeindex % to start indexing
```


Whenever a word is deemed indexable,  use

```
	\index{your word here}
```

Before closing the document print index by adding

```
\printindex
```


## Table Of Contents 

Add the following in the preamble of the document: 

```
	\tableofcontents %%
```

To use hyperlinked table of contents and index use "hyperref" package.

Note: put the following setup in preamble of the document:

```
	\hypersetup{
	    colorlinks=true,
	    linkcolor=blue,
	    filecolor=magenta,    
	    urlcolor=cyan,
	}
```
