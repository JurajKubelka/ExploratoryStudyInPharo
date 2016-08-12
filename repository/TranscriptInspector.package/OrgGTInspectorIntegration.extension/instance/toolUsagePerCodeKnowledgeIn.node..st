*TranscriptInspector-toolusage-boxplot
toolUsagePerCodeKnowledgeIn: aView node: aNode
	| builder unfamiliar familiar data xNames deco |
	unfamiliar := aNode sessionHeadings select: #isUnfamiliarSession.
	familiar := aNode sessionHeadings select: #isFamiliarSession.
	xNames := { 'Unfamiliar'. 'Familiar' }.

	builder := RTGrapher new.
	builder view: aView.
	builder extent: 150 @ 200. 

	{ unfamiliar. familiar } do: [ :eachSessions |
		data := RTBoxPlotDataSet new.
		data showMean: true.
		data meanShape size: 10.
		data outlierShape size: 8.
		data points: eachSessions. 
		data model: eachSessions.
		data y: [ :eachSession | eachSession staticVsDynamicToolUsageRatio  ].
		data minY: 0.
		data maxY: 1.
		builder add: data.
	].

	builder axisX noLabel; noTick. 
	deco := RTHorizontalAllValuesDecorator new.
	deco labelRotation: 0;
		labelConversion: [ :index | xNames at: index ].
	builder addDecorator: deco.

	self configureAxisYForToolUsage: builder.

	builder build.
	^ builder view.
		
	