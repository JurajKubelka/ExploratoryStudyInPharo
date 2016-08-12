*TranscriptInspector-toolusage-timeline
paintToolUsageOn: aView node: aNode withQuestions: aBoolean
	| builder keywords globalStart set keywordColors keywordNormalizer questions questionSet questionNormalizer toolUsageNormalizer legend staticColor dynamicColor otherColor |
	keywords := aNode toolUsageKeywords reject: #isRestTime.
	globalStart := (keywords detectMin: [ :each | each start ]) ifNotNil: #start.

	questions := aNode generalQuestions reject: [ :e | e timespan isNil ].
	questionSet := (aNode document generalQuestions collect: #questionId) asSet asSortedCollection.
	globalStart := (questions detectMin: [ :each | each start ])
							ifNotNil: [ :aQuestion | globalStart 
								ifNotNil: [ aQuestion start min: globalStart ]
								ifNil: [ aQuestion start ] ]
							ifNil: [ globalStart ].

	keywordColors := RTColorPalette qualitative colors: 3 scheme: 'Set1'.
	staticColor := keywordColors third.
	dynamicColor := keywordColors second.
	otherColor := keywordColors first.
	keywordNormalizer := [ :aKeyword | 
		aKeyword isStaticTool 
			ifTrue: [ staticColor  ]
			ifFalse: [ aKeyword isDynamicTool 
							ifTrue: [ dynamicColor ]
							ifFalse: [ otherColor ] ] ].

	questionNormalizer := RTMultiLinearColor new
		colors: (RTColorPalette qualitative colors: 20 scheme: 'FlatUI1');
		command: [ :aQuestion | (questionSet indexOf: (aQuestion questionId)) / questionSet size ].
	toolUsageNormalizer := [ :aQuestion | | ratio aColor |
		aColor := (questionNormalizer rtValue: aQuestion).
		ratio := aQuestion staticVsLiveToolUsage.
		(ratio isInfinite or: [ ratio isNaN ]) 
			ifTrue: [ aColor ]
			ifFalse: [
				Color h: aColor hue s: ratio v: aColor brightness.
				" aColor adjustSaturation: ratio brightness: aColor brightness."
				"aColor alpha: (ratio asFloat max: 0.3)" ] ].

	builder := RTTimeline new.
	builder view: aView.

	keywords ifNotEmpty: [ | knowledge |
		knowledge := [ :familiarRatioNumber | 
			familiarRatioNumber = 1 
				ifTrue: [ 'F' ]
				ifFalse: [ familiarRatioNumber = 0 ifTrue: [ 'U' ] ifFalse: [ 'P' ] ] ].
		set := RTTimelineSet new.
		set objects: keywords.
		set shape color: [ :aKeyword | keywordNormalizer rtValue: aKeyword ]; borderColor: Color white; borderWidth: 1.
		set lineIdentifier: [ :aKeyword | 
				aKeyword sessionHeading sessionId, ' (', 
				(knowledge value: aKeyword sessionHeading familiarRatio), ', ',
				(aKeyword sessionHeading participantId asString), ', ',
				((aKeyword sessionHeading staticVsDynamicToolUsageRatio asFloat * 100) rounded asString), '%)' ].
		set start: [ :each | (each start - globalStart) asSeconds ].
		set end: [ :each | (each end - globalStart) asSeconds ].
		builder add: set ].

	aBoolean ifTrue: [ 
		"Question Hierarchy"
		questions ifNotEmpty: [ 
			set := RTSubTimelineSet new.
			set interaction popupText: [ :aQuestion | aQuestion fullName ].
			set objects: questions.
			set shape color: toolUsageNormalizer; borderColor: Color white; borderWidth: 1.
			set lineIdentifier: [ :aQuestion | aQuestion sessionHeading sessionId, '-Questions' ].
			set start: [ :each | (each start - globalStart) asSeconds ].
			set end: [ :each | (each end - globalStart) asSeconds ].
			set level: [ :each | each level ].
			builder add: set ] ].

	"Builder setup"
	builder extent: 350 @ (300 min: (keywords collect: #sessionHeading as: Set) size * 30 * builder numberOfSets).
	builder axisX
		numberOfLabels: 5;
		labelRotation: 0;
		labelConversion: [ :seconds | | duration minutes restSeconds |
			duration := (Duration seconds: seconds) roundTo: 1 second.
			minutes := duration asMinutes asInteger.
			restSeconds := duration seconds.
			minutes printString, ':', restSeconds printString ];
		title: 'Time [minutes:seconds]'.
	builder axisY title: 'Session'.
	builder build.
	
	"legend"
	legend := RTLegendBuilder new.
"	legend onDemand.
"	legend view: builder view.

"	legend addText: aNode codeType longName.
"	"keywordSet withIndexDo: [ :eachKeyword :index |
		legend addColor: (keywordColors at: index) text: eachKeyword ]."
	legend addColor: staticColor text: 'Static Tool Usage'.
	legend addColor: dynamicColor text: 'Dynamic Tool Usage'.
"	legend addColor: otherColor text: 'revise it!'.
"	legend build.
