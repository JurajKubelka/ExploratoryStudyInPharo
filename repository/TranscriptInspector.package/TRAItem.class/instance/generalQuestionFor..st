accessing
generalQuestionFor: aTRASpecificQuestion 
	| specificIndex |
	specificIndex := self parts indexOf: aTRASpecificQuestion.
	self parts withIndexDo:  [ :value :index |
		index > specificIndex ifTrue: [ 
			value isGeneralQuestion ifTrue: [ ^ value ].
			value isSpecificQuestion ifTrue: [ ^ TRAMissingGeneralQuestion new ] ] ].
	^  TRAMissingGeneralQuestion new