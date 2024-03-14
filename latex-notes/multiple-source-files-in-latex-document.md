Multiple Latex Source File
==========================

1. Root file is the main file where all the latex source files will be included to.
2. Only root file has preamble, i.e. include of packages, doc type, commands
   (begin/end) etc.
3. use `\input{filename}` or `\input{filename.tex}` where ever source files are
   to be included.
