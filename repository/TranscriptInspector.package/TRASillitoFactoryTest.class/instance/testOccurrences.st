tests-accessing
testOccurrences
	factory occurrences do: [ :eachQuestion | 
		self assertQuestion: eachQuestion ].