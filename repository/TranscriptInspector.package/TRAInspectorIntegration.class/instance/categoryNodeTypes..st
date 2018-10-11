categories complexity
categoryNodeTypes: aNode

	| theGeneralQuestions theRootsWithoutChildren theRootsWithChildren theNodesWithParentsAndChildren theLeavesWithParents aRowBlock |
	theGeneralQuestions := aNode generalQuestions.
	
	theRootsWithoutChildren := (theGeneralQuestions select: [ :eachGeneralQuestion | 
		eachGeneralQuestion generalOneLevelSubQuestions isEmpty and: [ eachGeneralQuestion parentGeneralQuestions isEmpty ] ]) 
			groupedBy: [ :e | e groupName select: #isUppercase ].

	theRootsWithChildren := (theGeneralQuestions select: [ :eachGeneralQuestion | 
		eachGeneralQuestion generalOneLevelSubQuestions notEmpty and: [ eachGeneralQuestion parentGeneralQuestions isEmpty ] ]) 
			groupedBy: [ :e | e groupName select: #isUppercase ].

	theNodesWithParentsAndChildren := (theGeneralQuestions select: [ :eachGeneralQuestion | 
		eachGeneralQuestion generalOneLevelSubQuestions notEmpty and: [ eachGeneralQuestion parentGeneralQuestions notEmpty ] ]) 
			groupedBy: [ :e | e groupName select: #isUppercase ].

	theLeavesWithParents := (theGeneralQuestions select: [ :eachGeneralQuestion | 
		eachGeneralQuestion generalOneLevelSubQuestions isEmpty and: [ eachGeneralQuestion parentGeneralQuestions notEmpty ] ]) 
			groupedBy: [ :e | e groupName select: #isUppercase ].

	aRowBlock := [ :aCategoryName | 
		Array 
			with: aCategoryName
			with: (theRootsWithoutChildren at: aCategoryName) 
			with: (theRootsWithChildren at: aCategoryName)
			with: (theNodesWithParentsAndChildren at: aCategoryName)
			with: (theLeavesWithParents at: aCategoryName) ].
		
	^ Array
		with: (aRowBlock value: 'FFP')
		with: (aRowBlock value: 'EFP')
		with: (aRowBlock value: 'US')
		with: (aRowBlock value: 'QGS')
		