sed Notes
=========

sed is used for 

1. find and replace string 
2. substitute and replace
3. print specific numbers
4. search for pattern 
5. insert text


## Basic Syntax

```
        sed 's/<pattern>/<substitute>/'
```

## Find And Replace 

```
        echo "hello world" | sed 's/hello/world/'
        # world world
```

In the above example "hello" is replaced with "world" and the output of the
command is "world world".


```
        sed 's/hello/world/1' <file>
```
This command will change first occurrence of "hello" with "world" in every line.
Use 'g' to substitute every occurrence of <pattern>.

## Find And Add To String

```
        sed 's/GNU/& is not Unix/g' <file>
```
This command will find occurrence of "GNU" and replace it with "GNU is not Unix".

```
        sed 's/GNU/&/' <file>
        # this will not change anything
        
        sed 's/GNU/& &/' <file>
        # it will replace GNU with GNU GNU
```

## Regular Expressions [1][2]

Simply put, regular expressions are symbolic notations used to identify patterns
in text[1]. Different tools can have different set of regular expression.

```
        meta characters
        ^ $ . [ ] { } - ? * + () | \

        ^, $    Anchors, match first and last characters respectively of a line
        .       Match any (one position) character in a line
        *       Matches zero or more occurence of previous character
        ?       Matches zero or one occurence of previous character [3]
```

## Examples

```
        echo "world" | sed "s/^/hello /g"
        # hello world

        echo "hello" | sed "s/$/ world/g"
        # hello world

        echo "hello world" | sed "s/./bye/g"
        # byebyebyebyebyebyebyebyebyebyebye 

        echo "hello world" | sed "s/.*lo //g"
        # world
```

# sed Extra
```
	Command Line Options
	-n	quiet
	-e	script, if -e not given aussumes the first argument as the
		script
	-f	script file
```

## Substitute Command

Perhaps the most important sed command. It is used to substitute string of text.
Substitute command has the following template

```
	"s/REGEXP/REPLACEMENT/FLAGS"
```
some examples

```
	echo "hello world" | sed -e 's/hello/bye/1'
	# substitutes first occurence of hello with bye in each line

	cat text.txt  | sed -e '14s/hello/world/g'
	# substitutes all occurence of hello with world in line number 14

	sed -e '1,14s/hello/world/g' text.txt
	# substitutes all occurences of hello with world in line numbers 1-14
```

The line numbers in previous examples are called addresses. They can be regex
too. This can be used to match line with regex instead of numbers

```
	sed -e "/REGEXP/s/hello/world/g" text.txt
	# replace hello with world in lines that contain the REGEXP

	sed -e "/REGEXP/!s/hello/world/g" text.txt
	# it select the lines that doesn't contain REGEXP
```

## Further Reading
- https://alexharv074.github.io/2019/04/16/a-sed-tutorial-and-reference.html
- [1] p. 245, The Linux Command Line by William Shots
- [2] https://en.wikipedia.org/wiki/Sed#Other_sed_commands
- [3] https://www.gnu.org/software/sed/manual/sed.html#BRE-vs-ERE
