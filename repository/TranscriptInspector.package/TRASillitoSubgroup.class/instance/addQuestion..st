adding
addQuestion: aTRASillitoQuestion 
	| question |
	question := aTRASillitoQuestion asSillitoQuestion.
	question subgroup: self.
	^ self questions addLast: question