pdf2htmlEX
==========

pdf2htmlEX is a free software that converts pdf documents into
html pages. This is a big improvement over pdftohtml. It can 
embed images, tables, forms in pdf files to html file, which 
can be viewed by modern web browser.

The software is distributed under the terms of GPLv3 and GPLv2.

Surprisingly pdf2htmlEX is not available in debian/ubuntu repos.
The only way to get this software seems to be from its official
github repo[1]. Fortunately official builds are available as
AppImage.


## Setup

Download pdf2htmlEX AppImage from [1] then
```
	chmod u+x <pdf2htmlEX_package.AppImage>

	alias pdf2html=<pdf2htmlEX_package.AppImage>
	# alias for ease of use.
```

	
## Convert PDF To HTML

```
	pdf2html <file>.pdf
```	
The output will be an html file. Which can be hosted as a
webpage. 

```
	pdf2html --embed cfij --split-pages 1\
		 --dest-dir <output dir>\
		 --page-filename <file>%d.page\
		 --process-outline 1 <file>.pdf	

	Options:
		--embed cfij 
			embed css, font, image, js
		--dest-dir
			output dir
		--split-pages
			split pdf pages into separate html files
		--page-filename
			name for separate html files
		--process-outline
			include outline in html doc 
			(0|1), 1 : true
```

## Extra
Replace pdf2htmlEX.min.js with [4] for some features. Replace 
pdf2htmlEX-64x64.png with 64x64 png file. Change background color: fancy.min.css.

## Further Reading

[1] https://github.com/pdf2htmlEX/pdf2htmlEX
[2] http://web.archive.org/web/20220804070108/https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Command-Line-Options
[3] http://web.archive.org/web/20220804081927/https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/Quick-Start
- https://github.com/pdf2htmlEX/pdf2htmlEX/wiki/
- http://web.archive.org/web/20220804075507/https://www.wild-inter.net/posts/pdf2htmlex
[4] http://web.archive.org/web/20220804075507/https://www.wild-inter.net/publications/html/pdf2htmlEX.min.js
