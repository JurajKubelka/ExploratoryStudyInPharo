*TranscriptInspector-questions
paintOneTypeGeneralQuestionsWithLegendOn: aView node: aNode
	self paintOneTypeGeneralQuestionsOn: aView node: aNode.
	self
		paintGeneralQuestionsLegendOn: aView
		text: aNode codeType longName
		ourColor: RTMultipleData new colorPalette first
		sillitoColor: RTMultipleData new colorPalette second