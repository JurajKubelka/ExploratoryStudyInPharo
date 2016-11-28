Exports Sillito questions into a LaTeX format, so someone can use LaTeX commands as a shortcuts, e.g., question one can be denoted using \qQ{}. 

As LaTeX does not permits using number in command names, we use instead the keys bolong the numbers:
	- 1 2 3 4 5 6 7 8 9 0
	- Q W E R T Z U I O P

It expects the definition of  
	\newcommand{\qLongFormat}[1]{\textit{#1}}

Example:
	\newcommand{\qQ}{\qLongFormat{(1) Which type represents this domain concept or this UI element or action?}}

