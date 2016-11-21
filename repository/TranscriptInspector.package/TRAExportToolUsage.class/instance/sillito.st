accessing
sillito
	sillito ifNil: [ sillito := (TRASillito all divideQuestions: self questions) abridge ].
	^ sillito