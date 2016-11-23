private
createTableColumnsPerSessionHeadings: aCollection title: aString sillito: aTRASillito 
	| sorted result sum |
	sorted := aCollection sorted: [ :a :b | a sessionOrder < b sessionOrder ].
	result := sorted collect: [ :orgHeading |
		TRATableColumn heading: orgHeading values: (aTRASillito codeType sillito: orgHeading generalQuestions) abridge ].
	sum := (aTRASillito codeType sillito: (sorted flatCollect: #generalQuestions)) abridge.
	result addLast: (TRATableColumn title: aString values: sum).
	result addLast: (TRATableColumn sillito: aTRASillito).
	^ result