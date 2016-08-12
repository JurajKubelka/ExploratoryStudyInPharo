*TranscriptInspector-questions-boxplots
paintBoxPlotQuestionsViewIn: aView sessions: aCollection 
	| builder sillito data sillitoSessions total total2 deco |
	total := (aCollection flatCollect: #generalQuestions) size.
	sillito := aCollection codeType sillito.
	total2 := sillito numberOfQuestions.
	sillitoSessions := aCollection codeType sillitoSessions.

	builder := RTGrapher new.
	builder view: aView.
	sillito groups withIndexDo: [ :eachSillitoGroup :index | | group |
		"Our sessions"
		data := RTBoxPlotDataSet new.
		data boxShape color: (RTMultipleData new colorPalette first).
		data showMean: true.
		data meanShape size: 10.
		data outlierShape size: 8.
		group := aCollection collect: [ :eachSession | | all |
			all := eachSession sillitoQuestions.
			all -> (all groups at: index) ].
		data points: group.
		data x: 2 * index - 1.
		data y: [ :assoc | assoc value numberOfQuestions / assoc key numberOfQuestions * 100 ].
		builder add: data.		

		"Sillito's sessions"
		data := RTBoxPlotDataSet new.
		data showMean: true.
		data boxShape color: (RTMultipleData new colorPalette second).
		data meanShape size: 10.
		data outlierShape size: 8.
		group := sillitoSessions collect: [ :eachSession | eachSession -> (eachSession groups at: index) ].
		data points: group.
		data x: 2 * index.
		data y: [ :assoc | assoc value numberOfQuestions / assoc key numberOfQuestions * 100 ].
		builder add: data.		
	].

	builder axisX noLabel; noTick. 
	deco := RTHorizontalAllValuesDecorator new.
	deco labelRotation: -45;
		labelConversion: [ :index | 
			index odd 
				ifTrue: [ (sillito groups at: index + 1 / 2) shortName ] 
				ifFalse: [ '' ] ].
	builder addDecorator: deco.

	builder axisY labelConversion: [ :aNumber | aNumber asInteger asString, ' %' ].
	builder build.
	^ aView