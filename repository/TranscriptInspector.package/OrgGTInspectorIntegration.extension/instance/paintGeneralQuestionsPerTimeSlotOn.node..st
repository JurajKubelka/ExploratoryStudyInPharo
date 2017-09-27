*TranscriptInspector-questions-timeline
paintGeneralQuestionsPerTimeSlotOn: aView node: aNode
	"Paint percentage of question occurrences in a timeline, divided to time blocks per 15 minutes.
	x: time block
	y: question id"
	| sillito positions questions groupedQuestions minDate maxNumber b ds |
	sillito := TRASillito allSillito questions.
	positions := sillito collect: [ :question | question shortName asString ].
	questions := self generalQuestions reject: [ :question | (positions includes: question questionId) not ].
	minDate := (questions detectMin: [ :question | question start ]) start.
	groupedQuestions := questions groupedBy: [ :eachQuestion | eachQuestion questionId ].
	maxNumber := 100.
	b := RTStackBarPlot new.
	b interaction popupText.
	b colorPalette colors: (Array with: Color blue with: Color lightBlue).
	positions do: [ :eachId | | group timeOne timeTwo timeThree timeFour sum |
		group := groupedQuestions at: eachId ifAbsent: [ nil ].
		group ifNotNil: [ 
			timeOne := group select: [ :question | question start - minDate < 15 minutes ].
			timeTwo := group select: [ :question | question start - minDate >= 15 minutes and: [ 
					question start - minDate < 30 minutes ] ].
			timeThree := group select: [ :question | question start - minDate >= 30 minutes and: [ 
					question start - minDate < 45 minutes ] ].
			timeFour := group select: [ :question | question start - minDate >= 45 minutes ].
			sum :=  timeOne size + timeTwo size + timeThree size + timeFour size.
			b add: { timeOne size / sum. timeTwo size / sum . timeThree size / sum. timeFour size / sum } title: eachId. ]
	 ].
	b barWidth: 500 height: 20.
	b 
		addLabelToBars: [ :assoc | (assoc key * 100) asInteger asString , '%' ] 
		if: [ :assoc | assoc key > 0.2 ] color: Color white.
	b build.
	^ b view

