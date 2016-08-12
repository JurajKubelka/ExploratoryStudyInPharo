adding
addAllSillitoQuestions: aTRASillitoSubgroup 
	self occurrences do: [ :eachOccurrence | | question |
		aTRASillitoSubgroup groupType shortName = eachOccurrence first ifTrue: [ 
			question := self question: eachOccurrence second.
			question count: eachOccurrence third + eachOccurrence fourth.
			aTRASillitoSubgroup addQuestion: question.
		] ]