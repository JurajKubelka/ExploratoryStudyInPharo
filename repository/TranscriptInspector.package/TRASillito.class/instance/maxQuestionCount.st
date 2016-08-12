enumerating
maxQuestionCount
	^ self groups max: [ :eachGroup | eachGroup maxQuestion: #count ifEmpty: 0 ]