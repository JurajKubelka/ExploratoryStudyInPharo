adding
addFamiliarSillitoQuestions: aTRASillitoSubgroup forSession: index
	self occurrences do: [ :eachOccurrence | | question |
		aTRASillitoSubgroup groupType shortName = eachOccurrence first ifTrue: [ 
			question := self question: eachOccurrence.
			question count: (eachOccurrence at: index + 17).
			aTRASillitoSubgroup addQuestion: question.
		] ]