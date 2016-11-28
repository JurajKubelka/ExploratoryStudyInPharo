writing
writeShortQuestion: aTRASillitoQuestion 
	"\newcommand{\qQ}{\qShortFormat{1}} 
	"
	self writer
		field: '\newcommand{\Q';
		field: (self questionId: aTRASillitoQuestion);
		field: '}{\qShortFormat{'; 
		field: aTRASillitoQuestion shortName;
		field: '}}';
		lineSeparator