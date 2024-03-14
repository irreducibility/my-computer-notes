Add Graphics And Pictures In Latex
==================================

## Requirements

```
	\usepackage{graphicx}
	\usepackage{caption} %% for captions
```
## Insert An Image

```
\begin{figure}[h] % h for here, image is going to be inserted where the
		  %statement is, if [h] is not provided, image will be inserted anywhere
	\includegraphics[width=0.8\textwidth]{filename}
	\caption{your caption}
	\label{fig:figure1}
\end{figure}
```

```
\includegraphics[trim= <left> <down> <right> <up>, clip]
								0			0		0		0 %0 clip

\includegraphics[scale=percent] %0-1
```
