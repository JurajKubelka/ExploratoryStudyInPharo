private
createTableColumnsForSessionHeadings: aCollection sillito: aTRASillito 
	"Creates column for each session. Without any summary column."
	| sorted result |
	sorted := aCollection sorted: [ :a :b | a sessionOrder < b sessionOrder ].
	result := sorted collect: [ :orgHeading |
		TRATableColumn heading: orgHeading values: (aTRASillito codeType sillito: orgHeading generalQuestions) abridge ].
	^ result