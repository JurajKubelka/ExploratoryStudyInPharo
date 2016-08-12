accessing
sameQuestionAs: aTRASillitoQuestion 
	self subgroups do: [ :eachGroup |
		(eachGroup sameQuestionAs: aTRASillitoQuestion) 
			ifNotNil: [ :aQuestion | ^ aQuestion ] ].
	^ nil