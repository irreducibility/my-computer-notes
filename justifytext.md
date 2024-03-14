Justify Text
============

## Justify/Wrap In VIM

While write text in VIM set text width by setting 

```
	:set tw=80
	# set textwidth to 80 character long
```

## Justify Using par Package

```
	cat <file> | par j1w80 
```
This will justify <file> to 80 character wide. 

## Justify Using fmt Program

```
	cat 1.txt | fmt -w 30''
	# Shrink text 30 character wide
	# fmt comes preinstalled on Linux Mint
```
