private
createSillitoQuestionsPerSessionHeadings: aCollection title: aString sillito: aTRASillito 
	| sorted result sum |
	sorted := aCollection sorted: [ :a :b | a sessionOrder < b sessionOrder ].
	result := sorted collect: [ :each | each -> (aTRASillito codeType sillito: each generalQuestions) abridge ].
	sum := (aTRASillito codeType sillito: (sorted flatCollect: #generalQuestions)) abridge.
	result addLast: (TRAExportTitle new title: aString; yourself) -> sum.
	result addLast: aTRASillito -> aTRASillito.
	^ result