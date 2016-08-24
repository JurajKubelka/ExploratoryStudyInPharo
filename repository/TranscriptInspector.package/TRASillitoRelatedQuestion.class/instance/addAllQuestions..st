adding
addAllQuestions: aCollection
	^ aCollection do: [ :eachQuestion |
			self addQuestion: eachQuestion ]