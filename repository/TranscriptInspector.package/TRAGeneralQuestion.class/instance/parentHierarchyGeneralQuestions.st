accessing
parentHierarchyGeneralQuestions
	"1st item is a root parent, last item is a direct parent.
	Return Array of Array of TRAQeneralQuestion"
	^ (Array streamContents: [ :aStream |
		| theQuestions |
		theQuestions := self parentGeneralQuestions.
		[ 
		theQuestions ifNotEmpty: [ 
			aStream nextPut: theQuestions.
			theQuestions := theQuestions anyOne parentGeneralQuestions ].
		theQuestions notEmpty.
		] whileTrue ]) reversed