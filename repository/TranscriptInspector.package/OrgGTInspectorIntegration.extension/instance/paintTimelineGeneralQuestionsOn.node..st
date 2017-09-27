*TranscriptInspector-questions-timeline
paintTimelineGeneralQuestionsOn: aView node: aNode
	"Paint question occurrences in a timeline.
	x: time a question accurres
	y: question id"
	| positions questions minDate b ds |
	positions := TRASillito allSillito questions collect: [ :question | question shortName asString ].
	positions := positions reversed.
	questions := aNode generalQuestions reject: [ :question | question questionId = 'e9' ].
	minDate := (questions detectMin: [ :question | question start ]) start.
	b := RTGrapher new.
	b view: aView.
	b extent: 600 @ 800.
	ds := RTData new.
	ds interaction popup.
	ds dotShape rectangle color: (Color blue alpha: 0.4).
	ds points: questions.
	ds x: [ :question | (question start - minDate) asSeconds ].
	ds y: [ :question | positions indexOf: question questionId ifAbsent: [ positions errorNotFound: question ] ].
	b add: ds.
	b axisY
		numberOfTicks: positions size;
		labelConversion: [ :index | 
			index isZero ifTrue: [ '' ] ifFalse: [ positions at: index ] ].
	b axisX
		numberOfTicks: 4;
		labelConversion: [ :seconds |
			String new: 5 streamContents: [ :aStream | | time |
				time := Time fromSeconds: seconds.
				time print24: true showSeconds: false on: aStream ] ].
	b build.
	^ b view