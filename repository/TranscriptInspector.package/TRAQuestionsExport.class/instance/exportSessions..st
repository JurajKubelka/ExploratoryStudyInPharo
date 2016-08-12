exporting
exportSessions: aCollectionOfSessionHeadings
	sessions := aCollectionOfSessionHeadings.
	questions := aCollectionOfSessionHeadings flatCollect: #generalQuestions.
	sillitoAll := TRASillito all sillito.
	"returns sessionHeading -> TRASillito object"
	questionsPerSession := self createSillitoQuestionsPerSessionHeadings: aCollectionOfSessionHeadings.
	self headerColumns: questionsPerSession.
	sillitoAll accept: self.