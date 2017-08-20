*DevFlowAnalysis
jumpToVideo
	"Open QuickTime Player at a given possition."
	| sessionHeading startingTime videoShift time |
	sessionHeading := self session title.
	startingTime := sessionHeading videoStartTime
			ifEmpty: [ self session startTime ]
			ifNotEmpty: [ :string | string asDateAndTime ].
	videoShift := self openTime - startingTime.
	time := Time fromSeconds: videoShift asSeconds.
	TRAQuickTime new
		openVideo: sessionHeading videoFileReference
		at: time