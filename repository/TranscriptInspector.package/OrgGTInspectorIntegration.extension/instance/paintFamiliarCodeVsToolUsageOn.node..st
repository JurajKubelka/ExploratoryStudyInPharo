*TranscriptInspector-roassal
paintFamiliarCodeVsToolUsageOn: aView node: aNode
	| sessionHeadings builder data legend edgeBuilder |
	sessionHeadings := aNode sessionHeadings.

	builder := RTGrapher new.
	builder view: aView.
	data := RTData new.
	data dotShape label color: Color black; text: #sessionId; height: 6.
	data interaction draggable.
	data x: [ :aSession | | ratio |
		ratio := aSession familiarRatio.
		ratio = 0 ifTrue: [ ratio := 0.022 ].
		ratio  ].
	data y: [ :aSession | | ratio |
		ratio := aSession staticVsDynamicToolUsageRatio.
		aSession sessionId = 'T7' ifTrue: [ ratio := ratio - 0.018 ].
		ratio ].
	data points: sessionHeadings.
	builder add: data.

	builder axisX title: 'Unfamiliar -> Familiar Session'.
	builder axisY title: 'Static -> Dynamic Tool Usage'.
	builder build.

	edgeBuilder := RTEdgeBuilder new
		view: builder view;
		objects: sessionHeadings;
		noRepetition.
	edgeBuilder shape line; horizontalAttachPoint.
	edgeBuilder connectToAll: [ :aSession | 
			sessionHeadings
				select: [ :each | (each == aSession) not and: [ each participantId = aSession participantId and: [ each familiarRatio > aSession familiarRatio ] ] ] ].

	legend := RTLegendBuilder new.
	legend onDemand.
	legend view: builder view.
	legend addText: 'Code Familiarity vs. Tool Usage'.
	legend addText: 'each circle represents one session'.
	legend build.
	builder view