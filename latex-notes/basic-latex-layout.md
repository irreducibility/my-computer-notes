Basic Latex Layout
==================

## Comments
- To comment a line use %
- To comment  multiple lines use

```
	\iffalse comments here \fi 
```

## Document Structure/ Basic Layout

```
    \documentclass[paperSize,main font]{doctype}
    \begin{document}
    \end{document}
```

Every document begins with

```
        \documentclass[a4paper,12pt]{article} % article is for short document
                                              % book is for writing books this
					      % has chapter features
```      
- Everything before `\begin{document}`, the preamble, is applied to the whole document.
- Everything that comes after `\end{document}` is ignored.

## Title

To give a title, in preamble of the document add

```
            \title{TITLE}
            \author{OPTIONAL}
            \date{\today}
            \maketitle
```

and call `\maketitle` inside document body, inside \begin{document}

## Body

For articles we have

```
        \section
        \subsection
        \subsubsection
        \paragraph
        \subparagraph
```

## Packages

To use a package add

```
		\usepackage{listings} % lisitings is for code
```	

## Add Codes To Latex Documents

To add codes to Latex use "listings" package. And add code snippets insde

```
        \lstinputlisting[language=Python,firstline=xx,lastline=yy]{/location/filename}
```
[] is optional.
