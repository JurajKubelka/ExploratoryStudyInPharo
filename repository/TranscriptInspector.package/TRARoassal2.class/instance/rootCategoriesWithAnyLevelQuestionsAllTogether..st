root categories with any level children
rootCategoriesWithAnyLevelQuestionsAllTogether: aNode
	| aTable aGrapher aSillito |
	aTable := TRAInspectorIntegration default rootCategoriesWithAnyLevelQuestions: aNode.
	aSillito := TRASillito allSillito.
	aGrapher := RTGrapher new.
	aSillito groups do: [ :eachGroup | 
		| aDataSet aModel |
		aDataSet := RTBoxPlotDataSet new.
		aDataSet showMean: true.
		aDataSet meanShape size: 3.
		aDataSet outlierShape size: 3.
		aModel := aTable select: [ :eachLine | eachLine key mainGroupName = eachGroup shortName ].
		aDataSet points: aModel.
		aDataSet model: aModel.
		aDataSet x: [ :anAssoc | eachGroup order ].
		aDataSet y: [ :anAssoc | anAssoc value size ].
		aGrapher add: aDataSet ].
	aGrapher axisX
		"labelRotation: -30;"
		labelConversion: [ :anOrderNumber | 
			anOrderNumber > 0 
				ifTrue: [ (aSillito groups at: anOrderNumber) shortName ]
			 	ifFalse: [ '' ] ];
		numberOfLabels: aSillito groups size.
	^ aGrapher build; view