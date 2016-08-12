*TranscriptInspector-questions
paintOneTypeGeneralQuestionsOn: aView node: aNode

	| builder ds sillito total total2 dataColor sillitoColor sillito2 groups |
	sillito := aNode codeType sillito: aNode generalQuestions.
	sillito2 := aNode codeType sillito.
	total := sillito numberOfQuestions.
	total2 := sillito2 numberOfQuestions.
	dataColor := Color lightGray.
	sillitoColor := Color black.
	groups := sillito groups withIndexCollect: [ :eachGroup :index | { eachGroup. sillito2 groups at: index } ].

	builder := RTGrapher new.
	builder view: aView.
	ds := RTMultipleData new. 
"	ds barShape width: 15; color: dataColor.
"	ds points: groups.
	ds addMetric: [ :pair | pair first numberOfQuestions / total * 100 ].
	ds addMetric: [ :pair | pair second numberOfQuestions / total2 * 100 ].
	ds barChartWithBarTitle: [ :pair | pair first shortName ].
	builder add: ds.

	builder axisX noLabel; noTick. 
	builder axisY labelConversion: [ :aNumber | aNumber asInteger asString, ' %' ].
	builder build.

