Latex to Html coversion:
========================

There are many tools which helps converting Latex to Html format. Converting
Latex source to Html generates much smaller web pages opposed to converting pdf
to html (using pdf2htmlEX).

## Options:
- pandoc
- latexml

## LATEXML:
LATEXML can be found in package repos of most Debian distros. It converts
complete latex source into html page(s).

Usage:

```
	latexml --dest=output.xml input.tex
```

This converts latex document to an xml document.	

```
	latexmlpost --dest=output.html output.xml	
```

Finally latexmlpost converts output.xml to a html page(s).

## Further Reading:

[Repo][https://github.com/brucemiller/LaTeXML]
[Intro][https://math.nist.gov/~BMiller/LaTeXML/manual/intro/]
- http://web.archive.org/web/20220809073315/https://www.homepages.ucl.ac.uk/~ucahmto/elearning/latex/2019/06/14/latexml.html
- http://web.archive.org/web/20220809073815/https://hackmd.io/@UoL-IWG/latexml
