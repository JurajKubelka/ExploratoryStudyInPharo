accessing
sameQuestionAs: aTRASillitoQuestion
	^ self newQuestion
		question: (self sillito sameQuestionAs: aTRASillitoQuestion);
		yourself