exporting
exportSessions: aCollectionOfSessionHeadings
	sessions := aCollectionOfSessionHeadings.
	questions := aCollectionOfSessionHeadings flatCollect: #generalQuestions.
	sillitoAll := TRASillito all sillito.
	"returns sessionHeading -> TRASillito object"
	tableColumns := self createTableColumnsPerSessionHeadings: aCollectionOfSessionHeadings.
	self headerColumns: tableColumns.
	sillitoAll accept: self.