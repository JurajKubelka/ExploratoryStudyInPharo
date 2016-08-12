*TranscriptInspector-questions-boxplots
paintBoxPlotQuestionsViewIn: aView node: aNode 
	| composite sessions |
	composite := RTComposer new.
	composite view: aView.
	sessions := 	aNode sessionHeadings as: OrgCollection.
	sessions parent: aNode document.
	self paintBoxPlotQuestionsViewIn: aView sessions: sessions.
	composite group: #all.
	sessions := 	(aNode sessionHeadings select: #isUnfamiliarSession) as: OrgCollection.
	sessions parent: aNode document.
	self paintBoxPlotQuestionsViewIn: aView sessions: sessions.
	composite group: #unfamiliar.
	sessions := (aNode sessionHeadings select: #isFamiliarSession) as: OrgCollection.
	sessions parent: aNode document.
	self paintBoxPlotQuestionsViewIn: aView sessions: sessions.
	composite group: #familiar.
	composite move: #unfamiliar onTheRightOf: #all.
	composite move: #familiar onTheRightOf: #unfamiliar.
	composite nameGroup: #all as: 'Questions Asked On Unfamiliar and Familiar Code'.
	composite nameGroup: #familiar as: 'Questions Asked On Familiar Code'.
	composite nameGroup: #unfamiliar as: 'Questions Asked On Unfamiliar Code'.
	
	self
		paintGeneralQuestionsLegendOn: aView
		text: aNode codeType longName
		ourColor: RTMultipleData new colorPalette first
		sillitoColor: RTMultipleData new colorPalette second.
	^ aView