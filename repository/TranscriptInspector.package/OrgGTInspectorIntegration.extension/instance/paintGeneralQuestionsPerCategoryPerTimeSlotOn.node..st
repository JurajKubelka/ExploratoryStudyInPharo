*TranscriptInspector-questions-timeline
paintGeneralQuestionsPerCategoryPerTimeSlotOn: aView node: aNode
	"Paint percentage of question occurrences for each category in a timeline, divided to time blocks per 25% of session duraration.
	x: time block
	y: category id"
	| sillito questions minDate b |
	sillito := (aNode codeType sillito: aNode fullyDefinedQeneralQuestions).
	questions := sillito questions collect: #question.
	minDate := (questions detectMin: [ :question | question start ]) start.
	b := RTStackBarPlot new.
	b view: aView.
	b interaction popupText.
	b colorPalette colors: (Array with: Color black with: Color lightGray).
	sillito groups do: [ :eachGroup | | groupQuestions timeOne timeTwo timeThree timeFour sum |
		groupQuestions := eachGroup questions collect: #question.
		timeOne := groupQuestions select: [ :question | | part |
					part := question sessionHeading sessionDurationBasedOnTranscript / 4.
					question start - minDate < part ].
		timeTwo := groupQuestions select: [ :question | | part |
			part := question sessionHeading sessionDurationBasedOnTranscript / 4.
			question start - minDate >= part and: [ question start - minDate < (part * 2) ] ].
		timeThree := groupQuestions select: [ :question | | part |
			part := question sessionHeading sessionDurationBasedOnTranscript / 4.
			question start - minDate >= (part * 2) and: [ question start - minDate < (part * 3) ] ].
		timeFour := groupQuestions select: [ :question | | part |
			part := question sessionHeading sessionDurationBasedOnTranscript / 4.
			question start - minDate >= (part * 3) ].
		sum :=  timeOne size + timeTwo size + timeThree size + timeFour size.
		b 
			add: { timeOne size / sum. timeTwo size / sum . timeThree size / sum. timeFour size / sum } 
			title: eachGroup shortName, ' (', sum asString, ' questions)'. 
	].
	b barWidth: 500 height: 20.
	b 
		addLabelToBars: [ :assoc | (assoc key * 100) asInteger asString , '%' ] 
		if: [ :assoc | assoc notNil and: [ assoc key > 0.03 ] ] color: Color white.
	b build.
	"Make labels black:"
	(b view elementsFromModel: nil) do: [ :eachLabel | eachLabel color: Color black ].
	^ b view