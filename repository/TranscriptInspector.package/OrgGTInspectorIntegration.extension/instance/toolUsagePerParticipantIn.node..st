*TranscriptInspector-toolusage-boxplot
toolUsagePerParticipantIn: aView node: aNode
	| builder data participants xNames deco |
	xNames := { 'Participants' }.
	participants := (aNode sessionHeadings groupedBy: #participantId) values.

	builder := RTGrapher new.
	builder view: aView.
	builder extent: 75 @ 200. 

	data := RTBoxPlotDataSet new.
	data showMean: true.
	data meanShape size: 10.
	data outlierShape size: 8.
	data points: participants. 
	data model: participants.
	data y: [ :eachParticipant | (eachParticipant sum: #staticVsDynamicToolUsageRatio) / eachParticipant size ].
	data minY: 0.
	data maxY: 1.
	builder add: data.

	builder axisX noLabel; noTick. 
	deco := RTHorizontalAllValuesDecorator new.
	deco labelRotation: 0;
		labelConversion: [ :index | xNames at: index ].
	builder addDecorator: deco.

	self configureAxisYForToolUsage: builder.

	builder build.
	^ builder view.
		
	
		
	