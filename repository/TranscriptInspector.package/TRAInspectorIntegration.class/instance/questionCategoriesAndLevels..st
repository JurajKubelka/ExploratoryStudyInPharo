categories with one-level sub-categories
questionCategoriesAndLevels: aNode
	"| Parent Category Level | Parent Category | Direct Child Category in ((Parent Category Level) + 1) Level | Questions (Edges) |"
	| aTable |
	aTable := Dictionary new.
	aNode generalQuestions do: [ :eachParentQuestion | 
		| aLevel theOneLevelSubQuestions |
		aLevel := eachParentQuestion level.
		theOneLevelSubQuestions := eachParentQuestion generalOneLevelSubQuestions.
		theOneLevelSubQuestions ifEmpty: [
			| aRowId aLine |
			aRowId := aLevel asString, '-', 
				(eachParentQuestion groupName select: #isUppercase) asString, 
				'None', '-'.
			aLine := aTable at: aRowId 
				ifAbsentPut: [ 
					(Array new: 4)
						at: 1 put: aLevel;	
						at: 2 put: (eachParentQuestion groupName select: #isUppercase);
						at: 3 put: 'None';
						at: 4 put: OrderedCollection new;
						yourself ].
			(aLine at: 4) add: (eachParentQuestion -> nil) ].
		theOneLevelSubQuestions do: [ :eachSubQuestion |
			| aRowId aLine |
			aRowId := aLevel asString, '-', 
				(eachParentQuestion groupName select: #isUppercase) asString, 
				(eachSubQuestion groupName select: #isUppercase) asString, '-'.
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