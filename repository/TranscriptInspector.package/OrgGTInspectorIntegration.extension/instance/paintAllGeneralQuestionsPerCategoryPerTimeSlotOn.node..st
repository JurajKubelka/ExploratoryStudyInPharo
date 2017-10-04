*TranscriptInspector-questions-timeline
paintAllGeneralQuestionsPerCategoryPerTimeSlotOn: aView node: aNode
	"Paint question occurrences per category per 25% session sections. For unfamiliar and familiar sessions."

	| composite sessions |
	composite := RTComposer new.
	composite view: aView.
	composite gap: 50.
	sessions := (aNode sessionHeadings select: #isUnfamiliarSession)
		as: OrgCollection.
	self paintGeneralQuestionsPerCategoryPerTimeSlotOn: aView node: sessions.
	composite group: #unfamiliar.
	sessions := (aNode sessionHeadings select: #isFamiliarSession)
		as: OrgCollection.
	self paintGeneralQuestionsPerCategoryPerTimeSlotOn: aView node: sessions.
	composite group: #familiar.
	composite move: #familiar below: #unfamiliar.
	composite
		nameGroup: #familiar
		as: 'Questions On Familiar Sessions'
		color: Color black.
	composite
		nameGroup: #unfamiliar
		as: 'Questions On Unfamiliar Sessions'
		color: Color black.
	^ aView
