*DevFlowAnalysis
basicTitle
	"It shows session id, participant name, and familiar vs. unfamiliar"
	self title isHeadingItem ifTrue: [ ^ self title sessionId ].
	^ (self title allRegexMatches: '^[^ ]* - [^ ]* - [^ ]*')
			ifEmpty: [ self title ]
			ifNotEmpty: [ :aCollection | aCollection first ]