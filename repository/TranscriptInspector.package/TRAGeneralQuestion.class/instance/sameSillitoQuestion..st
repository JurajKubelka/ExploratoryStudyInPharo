comparing
sameSillitoQuestion: aQuestion
	^ (aQuestion isKindOf: TRAGeneralQuestion) and: [ 
		self questionId = aQuestion questionId ]