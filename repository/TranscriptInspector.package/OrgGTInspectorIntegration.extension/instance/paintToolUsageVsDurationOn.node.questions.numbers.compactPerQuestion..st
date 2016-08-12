*TranscriptInspector-roassal
paintToolUsageVsDurationOn: aView node: aNode 
questions: questions numbers: booleanDisplayNumber compactPerQuestion: booleanCompact
	| builder pallete colors data group legend |
	pallete := RTColorPalette qualitative colors: 5 scheme: 'Set1'.
	colors := Array
		with: (pallete at: 3)
		with: (pallete at: 2)
		with: (pallete at: 5)
		with: (pallete at: 1).
	colors := colors collect: [ :eachColor | eachColor alpha: 0.6 ].
	group := aNode codeType sillito: questions.
	group := TRACompactQuestions new sillito: group; compact: booleanCompact; sillito.
	builder := RTGrapher new.
	builder view: aView.
	data := RTData new.
	booleanDisplayNumber 
		ifFalse: [ 
			data dotShape ellipse
				color: [ :aQuestion | colors at: aQuestion group order ] ]
		ifTrue: [ 
			data dotShape 
				composite: [ :aCompositeShape | aCompositeShape 
										add: (RTEllipse new color: [ :aQuestion | colors at: aQuestion group order ]);
										add: (RTLabel new text: [ :aQuestion | aQuestion shortName ])
								 ] ].
	data interaction draggable.
	data interaction popupText: [ :aQuestion | String streamContents: [ :aStream | 
			aStream
				print: aQuestion count;
				nextPutAll: 'x '.
			booleanCompact ifTrue: [ aStream print: aQuestion; cr ].
			booleanCompact ifFalse: [ (aQuestion questions collect: #shortName) asSet asOrderedCollection 
					do: [ :eachShortName | aStream print: eachShortName ]
					separatedBy: [ aStream nextPutAll: ', ' ].
					aStream cr ].
			aStream
				nextPutAll: 'Group: (';
				print: aQuestion group order;
				nextPut: $);
				space;
				nextPutAll: aQuestion group groupType longName ] ].
	data x: [ :aQuestion | aQuestion duration asMinutes / aQuestion count ].
	data y: [ :aQuestion | aQuestion staticVsLiveToolUsage ].
	data
		dotSize: [ :aQuestion | aQuestion count ]
		min: 8
		max: 25
		using: #yourself.
	data points: group questions.
	builder add: data.
	builder axisX title: 'Time on Answering Questions [minutes]'.
	builder axisY title: 'Static -> Dynamic Tool Usage'.
	builder build.
	legend := RTLegendBuilder new.
	legend onDemand.
	legend view: builder view.
	legend
		addText: 'Duration vs. Tool Usage in ' , aNode codeType longName.
	TRASillito all groups
		withIndexDo:
			[ :eachGroup :index | legend addColor: (colors at: index) text: eachGroup groupType longName ].
	legend 
		addText: 'each circle represents a question at similar duration and tool usage.';
		addText: 'size of circle = number of question occurences'.
	legend build.
	^ aView