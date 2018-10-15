root categories with any level children
rootCategoriesWithAnyLevelQuestions: aNode
	| aTable aComposite aSillito aPreviousGroup |
	aTable := TRAInspectorIntegration default rootCategoriesWithAnyLevelQuestions: aNode.
	aComposite := RTComposer new.
	aComposite gap: 35.
	aSillito := TRASillito allSillito.
	aPreviousGroup := nil.
	aSillito groups do: [ :eachGroup | 
		| aGrapher aDataSet aModel |
		aGrapher := RTGrapher new.
		aGrapher view: aComposite view.
		aDataSet := RTBoxPlotDataSet new.
		aDataSet showMean: true.
		aDataSet meanShape size: 10.
		aDataSet outlierShape size: 5.
		aModel := aTable select: [ :eachLine | eachLine key mainGroupName = eachGroup shortName ].
		aDataSet points: aModel.
		aDataSet model: aModel.
		aDataSet x: [ :anAssoc | 1 ].
		aDataSet y: [ :anAssoc | anAssoc value size ].
		aGrapher add: aDataSet.
		aGrapher build.
		aComposite group: eachGroup shortName.
		aPreviousGroup ifNotNil: [ 
			aComposite move: eachGroup shortName onTheRightOf: aPreviousGroup ].
		aPreviousGroup := eachGroup shortName ].
	aSillito groups do: [ :eachGroup |
		aComposite nameGroup: eachGroup shortName as: eachGroup shortName ].
	^ aComposite view