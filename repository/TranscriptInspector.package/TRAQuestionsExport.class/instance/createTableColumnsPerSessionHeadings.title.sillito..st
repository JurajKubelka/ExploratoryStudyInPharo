private
createTableColumnsPerSessionHeadings: aCollection title: aString sillito: aTRASillito 
	"Creates columns for each session followed by summary and sillito column."
	| result sum |
	sum := (aTRASillito codeType sillito: (aCollection flatCollect: #generalQuestions)) abridge.
	result := self createTableColumnsForSessionHeadings: aCollection sillito: aTRASillito .
	result addLast: (TRATableColumn title: aString values: sum).
	result addLast: (TRATableColumn sillito: aTRASillito).
	^ result