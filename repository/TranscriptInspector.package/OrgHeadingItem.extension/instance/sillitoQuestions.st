*TranscriptInspector
sillitoQuestions
	"Returns session general questions transformed into Sillito groups, subgroups, and quetions.
	It returns TRASillito object."
	^ (self codeType sillito: self generalQuestions) abridge