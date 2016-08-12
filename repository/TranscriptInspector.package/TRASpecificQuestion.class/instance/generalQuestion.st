accessing
generalQuestion
	^ self parent ifNotNil: [ :aParent | aParent generalQuestionFor: self ]