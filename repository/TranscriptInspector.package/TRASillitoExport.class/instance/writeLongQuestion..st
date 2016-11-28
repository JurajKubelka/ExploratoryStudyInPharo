writing
writeLongQuestion: aTRASillitoQuestion 
	"\newcommand{\qQ}{\qLongFormat{(1) Which type represents this domain concept or this UI element or action?}} 
	"
	self writer
		field: '\newcommand{\q';
		field: (self questionId: aTRASillitoQuestion);
		field: '}{\qLongFormat{'; 
		field: aTRASillitoQuestion fullName;
		field: '}}';
		lineSeparator