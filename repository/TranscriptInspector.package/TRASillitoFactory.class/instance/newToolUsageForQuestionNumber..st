instance creation
newToolUsageForQuestionNumber: anInteger 
	| occurrences |
	occurrences := (self occurrencesForQuestion: anInteger).
	^ TRASillitoToolUsageType newOfType: (occurrences at: self columnToolUsage)