*TranscriptInspector-toolusage-questions
paintAllToolUsagePerCategoryOn: aView node: aNode
	"Paint tool usage per category for all session, unfamiliar sessions, and familiar sessions."

	| composite sessions |
	composite := RTComposer new.
	composite view: aView.
	self paintToolUsagePerCategoryOn: aView node: aNode legend: false.
	composite group: #all.
	sessions := (aNode sessionHeadings select: #isUnfamiliarSession)
		as: OrgCollection.
	self paintToolUsagePerCategoryOn: aView node: sessions legend: false.
	composite group: #unfamiliar.
	sessions := (aNode sessionHeadings select: #isFamiliarSession)
		as: OrgCollection.
	self paintToolUsagePerCategoryOn: aView node: sessions legend: false.
	composite group: #familiar.
	composite move: #unfamiliar onTheRightOf: #all.
	composite move: #familiar onTheRightOf: #unfamiliar.
	composite
		nameGroup: #all
		as: 'Tool Usage On All Sessions'
		color: Color black.
	composite
		nameGroup: #familiar
		as: 'On Familiar Sessions'
		color: Color black.
	composite
		nameGroup: #unfamiliar
		as: 'On Unfamiliar Sessions'
		color: Color black.
	self
		paintToolUsageLegendOn: aView
		staticColor: Color gray
		dynamicColor: Color black.
	"	self
		paintGeneralQuestionsLegendOn: aView
		text: aNode codeType longName
		ourColor: Color gray
		sillitoColor: Color black
"
	^ aView