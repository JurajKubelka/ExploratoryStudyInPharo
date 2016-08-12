adding
addFamiliarSillitoQuestions: aTRASillitoSubgroup forSession: index
	self occurrences do: [ :eachOccurrence | | question |
		aTRASillitoSubgroup groupType shortName = eachOccurrence first ifTrue: [ 
			question := self question: eachOccurrence second.
			question count: (eachOccurrence at: index + 16).
			aTRASillitoSubgroup addQuestion: question.
		] ]