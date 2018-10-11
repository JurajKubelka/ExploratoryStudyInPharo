categories with all any-level sub-categories
questionCategoriesAndLevelsWithAllSubQuestions: aNode
	"| Parent Category Level | Parent Category | Child Category | Array of Parent Question -> Sub-Question |"
	| aTable |
	aTable := Dictionary new.
	aNode generalQuestions do: [ :eachParentQuestion | 
		| allSubQuestions |
		allSubQuestions := eachParentQuestion generalAnyLevelSubQuestions.
		allSubQuestions ifEmpty: [
			| aLevel aRowId aLine |
			aLevel := eachParentQuestion level.
			aRowId := aLevel asString, '-', 
				(eachParentQuestion groupName select: #isUppercase) asString, '-', 
				'None' asString.
			aLine := aTable at: aRowId 
				ifAbsentPut: [ 
					(Array new: 4)
						at: 1 put: aLevel;	
						at: 2 put: (eachParentQuestion groupName select: #isUppercase);
						at: 3 put: 'None';
						at: 4 put: OrderedCollection new;
						yourself ].
			(aLine at: 4) add: (eachParentQuestion -> nil).
		].
		allSubQuestions do: [ :eachSubQuestion |
			| aLevel aRowId aLine |
			aLevel := eachParentQuestion level.
			aRowId := aLevel asString, '-', 
				(eachParentQuestion groupName select: #isUppercase) asString, '-', 
				(eachSubQuestion groupName select: #isUppercase) asString.
			aLine := aTable at: aRowId 
				ifAbsentPut: [ 
					(Array new: 4)
						at: 1 put: aLevel;	
						at: 2 put: (eachParentQuestion groupName select: #isUppercase);
						at: 3 put: (eachSubQuestion groupName select: #isUppercase);
						at: 4 put: OrderedCollection new;
						yourself ].
			(aLine at: 4) add: (eachParentQuestion -> eachSubQuestion).
		] ].
	^ aTable values