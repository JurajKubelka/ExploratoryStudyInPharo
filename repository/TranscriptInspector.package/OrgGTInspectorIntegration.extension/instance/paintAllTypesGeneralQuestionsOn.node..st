*TranscriptInspector-questions
paintAllTypesGeneralQuestionsOn: aView node: aNode
	| composite sessions |
	composite := RTComposer new.
	composite view: aView.
	self paintOneTypeGeneralQuestionsOn: aView node: aNode.
	composite group: #all.
	sessions := 	(aNode sessionHeadings select: #isUnfamiliarSession) as: OrgCollection.
	self paintOneTypeGeneralQuestionsOn: aView node: sessions.
	composite group: #unfamiliar.
	sessions := 	(aNode sessionHeadings select: #isFamiliarSession) as: OrgCollection.
	self paintOneTypeGeneralQuestionsOn: aView node: sessions.
	composite group: #familiar.

"	self paintBoxPlotQuestionsViewIn: aView node: aNode.
	composite group: #boxplot.
"
	composite move: #unfamiliar onTheRightOf: #all.
	composite move: #familiar onTheRightOf: #unfamiliar.
"	composite move: #boxplot below: #all.
"	composite nameGroup: #all as: 'Questions Asked On Familiar and Unfamiliar Code' color: Color black.
	composite nameGroup: #familiar as: 'Questions Asked On Familiar Code' color: Color black.
	composite nameGroup: #unfamiliar as: 'Questions Asked On Unfamiliar Code' color: Color black.
	
	self
		paintGeneralQuestionsLegendOn: aView
		text: aNode codeType longName
		ourColor: Color gray
		sillitoColor: Color black