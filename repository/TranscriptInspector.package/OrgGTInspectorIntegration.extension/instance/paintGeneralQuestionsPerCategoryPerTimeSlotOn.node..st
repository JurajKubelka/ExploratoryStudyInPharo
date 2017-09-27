*TranscriptInspector-questions-timeline
paintGeneralQuestionsPerCategoryPerTimeSlotOn: aView node: aNode
	"Paint percentage of question occurrences for each category in a timeline, divided to time blocks per 15 minutes.
	x: time block
	y: question id"
	| sillito questions minDate b |
	sillito := (TRASillito default divideQuestions: aNode generalQuestions) abridge.
	questions := sillito questions flatCollect: #questions.
	minDate := (questions detectMin: [ :question | question start ]) start.
	b := RTStackBarPlot new.
	b interaction popupText.
	b colorPalette colors: (Array with: Color blue with: Color lightBlue).
	sillito groups do: [ :eachGroup | | groupQuestions timeOne timeTwo timeThree timeFour sum |
		groupQuestions := eachGroup questions flatCollect: #questions.
		timeOne := groupQuestions select: [ :question | question start - minDate < 15 minutes ].
		timeTwo := groupQuestions select: [ :question | question start - minDate >= 15 minutes and: [ 
				question start - minDate < 30 minutes ] ].
		timeThree := groupQuestions select: [ :question | question start - minDate >= 30 minutes and: [ 
				question start - minDate < 45 minutes ] ].
		timeFour := groupQuestions select: [ :question | question start - minDate >= 45 minutes ].
		sum :=  timeOne size + timeTwo size + timeThree size + timeFour size.
		b add: { timeOne size / sum. timeTwo size / sum . timeThree size / sum. timeFour size / sum } title: eachGroup shortName. 
	].
	b barWidth: 500 height: 20.
	b 
		addLabelToBars: [ :assoc | (assoc key * 100) asInteger asString , '%' ] 
		if: [ :assoc | assoc key > 0.2 ] color: Color white.
	b build.
	^ b view

