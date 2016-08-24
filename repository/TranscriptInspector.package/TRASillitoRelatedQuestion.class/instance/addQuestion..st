adding
addQuestion: aTRAGeneralQuestion 
	| question |
	question := aTRAGeneralQuestion asSillitoQuestion.
	question subgroup: self.
	^ self questions addLast: question