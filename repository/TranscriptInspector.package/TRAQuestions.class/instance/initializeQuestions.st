initialization
initializeQuestions
	questions := Dictionary new.
	self class questions do: [ :each |
		questions at: each shortName asString put: each ].