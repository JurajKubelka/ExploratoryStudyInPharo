categories complexity
rootCategoriesWithAnyLevelQuestions: aNode
	^ (aNode generalQuestions select: [ :e | 
		e generalOneLevelSubQuestions notEmpty and: [ 
			e parentGeneralQuestions isEmpty ] ]) collect: [ :eachQuestion | 
				(eachQuestion "groupName select: #isUppercase") -> (
					eachQuestion generalAnyLevelSubQuestions) ]