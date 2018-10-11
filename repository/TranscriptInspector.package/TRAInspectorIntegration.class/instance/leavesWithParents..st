categories complexity
leavesWithParents: aNode
	^ (aNode generalQuestions select: [ :e | 
			e generalOneLevelSubQuestions isEmpty and: [ 
				e parentGeneralQuestions notEmpty ] ])