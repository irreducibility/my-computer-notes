Maths Equations In Latex
========================

## Requirements

Using mathematical equations in latex requires "amsmath" package. Include this
package using 

```
	\usepackage{amsmath}
```
## Inline Equations

Write math equations inline using

```
	 $ your equation here $

	 or

	\(your equation here\) 

	or

	\begin{math}
		your equation here
	\end{math}


```

## Newline Equations

```
	 $$ your equation here $$

	 or 
	
	\[ your equation here \]

	or

	\begin{displaymath}
		your equation here
	\end{displaymath}

```

## Newline Numbered Equation 

```
	\begin{equation}
		your equation here
	\end{equation}
```

## Align Equations

```
	\begin{align}
		y&=1 + 2x\\ %&= to align with =
						% \\new line
		 &=2x + 1
		 %use \nonumber for not numbering equations
	\end{align}
```	
Note:

- use "align" instead of "equation".

- for equation numbering with respect to sections use  `\numberwithin{equations}{section}`

- for proper sized brackets use `$\left( \right)$`
