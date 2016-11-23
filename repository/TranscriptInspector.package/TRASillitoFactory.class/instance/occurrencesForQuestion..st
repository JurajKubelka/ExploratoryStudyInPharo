enumerating
occurrencesForQuestion: anInteger 
	^ self occurrences detect: [ :each | (each at: self columnQuestionNumber) = anInteger ]