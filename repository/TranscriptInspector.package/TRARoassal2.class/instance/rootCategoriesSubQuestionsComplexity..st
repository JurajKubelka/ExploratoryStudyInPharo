boxplot - subquestions and unfamiliar vs. familiar code
rootCategoriesSubQuestionsComplexity: aNode
	| theRootQuestions aGrapher aSillito |
	theRootQuestions := aNode generalQuestions select: [ :e | e level = 1 ].
		"collect: [ :eachQuestion | eachQuestion -> eachQuestion generalAnyLevelSubQuestions ]."
	aSillito := TRASillito allSillito.
	aGrapher := RTGrapher new.
	aSillito groups do: [ :eachGroup | 
		| aDataSet aModel |
		aDataSet := RTBoxPlotDataSet new.
		aDataSet showMean: true.
		aDataSet meanShape size: 3.
		aDataSet outlierShape size: 3.
		aModel := theRootQuestions select: [ :eachQuestion | 
			eachQuestion mainGroupName = eachGroup shortName and: [ 
				eachQuestion sessionHeading isFamiliarSession not ] ].
		aDataSet points: aModel.
		aDataSet model: aModel.
		aDataSet x: [ :eachQuestion | eachGroup order ].
		aDataSet y: [ :eachQuestion | eachQuestion generalAnyLevelSubQuestions size ].
		aGrapher add: aDataSet ].
	aGrapher axisX
		"labelRotation: -30;"
		labelConversion: [ :anOrderNumber | 
			anOrderNumber > 0 
				ifTrue: [ (aSillito groups at: anOrderNumber) shortName ]
			 	ifFalse: [ '' ] ];
		numberOfLabels: aSillito groups size.
	^ aGrapher build; view