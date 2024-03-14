Lektor
======
Lektor is a cms, it help to create and manage static
websites. It is written in python.

## Installing lektor
To install lektor in a virtual environment run:

```
	$ virtualenv venv
	$ . venv/bin/activate
	$ python3 -m pip install Lektor
```

## Create a project
Make sure you are "venv" (your virtual env).

```
	$ lektor quickstart
```

This will generate a basic files and directories
to work with.


## Run lektor server

```
	$ cd yourproject
	$ lektor server
```

This will start the lektor server on localhost:5000.
you can open the url in a browser and create and manage
webpages using lektor cms.

## Manage webpages manually 

Create a project([see](#create-a-project)). Create and
change files as required. Once you have written pages 
you can build your website using:

```
	$ lektor build

	-O	output dir
```

## Project structure
The following description is based on default lektor files.

```
	Source                        Output
	----------------------------------------------------
	Project                       Project
	├── assets                    ├── about
	│   └── static                │   └── index.html
	│       └── style.css         ├── blog
	├── content                   │   ├── first-post
	│   ├── about                 │   │   └── index.html
	│   │   └── contents.lr       │   └── index.html
	│   ├── blog                  ├── index.html
	│   │   ├── contents.lr       ├── projects
	│   │   └── first-post        │   └── index.html
	│   │       └── contents.lr   └── static
	│   ├── contents.lr               └── style.css	
	│   └── projects              
	│       └── contents.lr       
	├── models                    
	│   ├── blog.ini
	│   ├── blog-post.ini
	│   └── page.ini
	├── templates
	│   ├── blog.html
	│   ├── blog-post.html
	│   ├── layout.html
	│   ├── macros
	│   │   ├── blog.html
	│   │   └── pagination.html
	│   └── page.html
	└── Project.lektorproject
```

## assets
This directory contains style sheet, font files etc.

## content
Contains all contents such as `blogs`, `posts`, `pages` etc.
that are required to build a website. Each webpage 
corresponds to file a named `contents.lr`. This
contents.lr file will be used to generate webpages.
So if you have a `/content/blog/first-post/contents.lr`
it will produce a webpage `/blog/first-post/index.html`
once built.

Contents of `contents.lr` can be plain text, Markdown or 
`html`.

## models
The model folder contains a list of "INI" files. Models
are there mostly for lektor *cms ui*. Templates that `contents.lr`
is embedded on is defined by models. As template used for
contents.lr is the one with the filename same as model file
name.

## templates
Templates are, as name suggests, contains basic outline
for webpages. Lektor will convert `contents.lr`
and embed them to templates. Lektor uses *Jinja2* and a lot
of `html` for templating. Jinja2 is python based api that has
python like syntax. 

For comprehensive detail on templating see
[this](https://jinja.palletsprojects.com/en/3.1.x/templates/).
Note that jinja2 templating can be used for `html`,
`tex` and more.

contents.lr provides the webpage content, templates provides basic layout
and model configurations for a webpage. Lektor uses these three to generate 
generate a webpage.

### templates/layout.html
This file defines basic layout for entire website. For more information
read templates/<file>.html, this will give a deeper insight.

## MISC
```
	$ lektor project-info
	#shows info about current project
```

## Further Reading

1. [Jinja2 Templating documentation](https://jinja.palletsprojects.com/en/3.1.x/templates/)
2. [Project Configuration](https://www.getlektor.com/docs/project/file/)
	
