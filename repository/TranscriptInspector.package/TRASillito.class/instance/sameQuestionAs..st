accessing
sameQuestionAs: aTRASillitoQuestion 
	self groups do: [ :eachGroup |
		(eachGroup sameQuestionAs: aTRASillitoQuestion) 
			ifNotNil: [ :aQuestion | ^ aQuestion ] ].
	^ nil