categories - levels
questionCategoriesAndLevels: aNode
	"| Parent Category Level | Parent Category | Child Category | Questions |"
	| aTable |
	aTable := Dictionary new.
	aNode generalQuestions do: [ :eachQuestion | 
		| theParentQuestions |
		theParentQuestions := eachQuestion parentGeneralQuestions.
		theParentQuestions do: [ :eachParentQuestion |
			| aLevel aRowId aLine aSilitoQuestion |
			aLevel := eachParentQuestion level.
			aRowId := aLevel asString, '-', 
				(eachParentQuestion groupName select: #isUppercase) asString, '-', 
				(eachQuestion groupName select: #isUppercase) asString.
			aSilitoQuestion := eachParentQuestion sillitoQuestion.
			aLine := aTable at: aRowId 
				ifAbsentPut: [ 
					(Array new: 4)
						at: 1 put: aLevel;	
						at: 2 put: (eachParentQuestion groupName select: #isUppercase);
						at: 3 put: (eachQuestion groupName select: #isUppercase);
						at: 4 put: OrderedCollection new;
						yourself ].
			(aLine at: 4) add: (eachParentQuestion -> eachQuestion).
		] ].
	^ aTable values