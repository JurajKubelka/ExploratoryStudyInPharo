*TranscriptInspector-toolusage-boxplot
paintBoxPlotToolUsagePerQuestionViewIn: aView node: aNode 
	| builder sillito data deco questions |
	sillito := (aNode codeType sillito: aNode fullyDefinedQeneralQuestions) abridge.
	questions := sillito questions.
	
	builder := RTGrapher new.
	builder extent: 800 @ 300.
	builder view: aView.
	questions withIndexDo: [ :eachQuestion :index |
		data := RTBoxPlotDataSet new.
		data showMean: true.
		data meanShape size: 10.
		data outlierShape size: 8.
		data points: eachQuestion questions.
		data model: eachQuestion.
		data x: index.
		data y: [ :aQuestion | aQuestion staticVsLiveToolUsage ].
		builder add: data.		
	].

	builder axisX noLabel; noTick. 
	deco := RTHorizontalAllValuesDecorator new.
	deco labelRotation: -90;
		labelConversion: [ :index | (questions at: index) shortName ].
	builder addDecorator: deco.

	builder axisY labelConversion: [ :aNumber | aNumber = 0 
		ifTrue: [ 'Static Tool' ] ifFalse: [ aNumber = 1 ifTrue: [ 'Dynamic Tool' ] ifFalse: [ '' ] ] ].
	builder build.
	^ aView