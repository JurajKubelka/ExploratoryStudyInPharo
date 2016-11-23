adding
addAllSillitoQuestions: aTRASillitoSubgroup 
	self occurrences do: [ :eachOccurrence | | question |
		aTRASillitoSubgroup groupType shortName = eachOccurrence first ifTrue: [ 
			question := self question: eachOccurrence.
			question count: eachOccurrence fourth + eachOccurrence fifth.
			aTRASillitoSubgroup addQuestion: question.
		] ]