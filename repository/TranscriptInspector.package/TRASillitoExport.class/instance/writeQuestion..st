writing
writeQuestion: aTRASillitoQuestion 
	"\newcommand{\qQ}{\qFormat{(1) Which type represents this domain concept or this UI element or action?}} 
	"
	self writer
		field: '\newcommand{\q';
		field: (self questionId: aTRASillitoQuestion);
		field: '}{\qFormat{'; 
		field: aTRASillitoQuestion fullName;
		field: '}}';
		lineSeparator