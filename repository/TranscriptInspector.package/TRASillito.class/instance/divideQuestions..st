adding
divideQuestions: aCollection 
	self groups do: [ :each | each divideQuestions: aCollection ]