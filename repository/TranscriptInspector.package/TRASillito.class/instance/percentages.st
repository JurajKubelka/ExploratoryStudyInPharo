accessing
percentages
	| total |
	total := self numberOfQuestions.
	^ (self groups collect: #numberOfQuestions)
			collect: [ :each | each / total ]