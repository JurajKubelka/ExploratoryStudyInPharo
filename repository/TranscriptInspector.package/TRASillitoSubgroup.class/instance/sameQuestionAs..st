accessing
sameQuestionAs: aTRASillitoQuestion 
	self questions do: [ :eachQuestion |
		(eachQuestion sameAs: aTRASillitoQuestion) 
			ifTrue: [ ^ eachQuestion ] ].
	^ nil