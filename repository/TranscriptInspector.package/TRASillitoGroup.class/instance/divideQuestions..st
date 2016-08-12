adding
divideQuestions: aCollection 
	self subgroups do: [ :each | each divideQuestions: aCollection ]