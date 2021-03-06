*TranscriptInspector-questions
paintOneTypeGeneralQuestionsOn: aView node: aNode

	| builder ds sillito total total2 sillito2 groups |
	sillito := aNode codeType sillito: aNode generalQuestions.
	sillito2 := aNode codeType sillito.
	total := sillito numberOfQuestions.
	total2 := sillito2 numberOfQuestions.
	groups := sillito groups withIndexCollect: [ :eachGroup :index | { eachGroup. sillito2 groups at: index } ].

	builder := RTGrapher new.
	builder view: aView.
	ds := TRAMultipleData new.
	ds colorPalette: { Color gray lighter. Color black }.
	ds points: groups.
	ds addMetric: [ :pair | pair first numberOfQuestions / total * 100 ].
	ds addMetric: [ :pair | pair second numberOfQuestions / total2 * 100 ].
	ds barChartWithBarTitle: [ :pair | pair first shortName ] rotation: 0 color: Color black.
	builder add: ds.
	builder axisX noLabel; noTick; color: Color black.
	builder 
		axisY labelConversion: [ :aNumber | aNumber asInteger asString, ' %' ];
		color: Color black.
	builder build.

