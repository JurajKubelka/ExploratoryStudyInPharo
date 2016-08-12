as yet unclassified
addAllQuestions: aCollection
	^ aCollection do: [ :eachQuestion |
			self addQuestion: eachQuestion ]