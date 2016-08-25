private
abridgeQuestions
	| dictionary |
	dictionary := Dictionary new.
	self questions do: [ :each | | sillito |
		sillito := each sillitoQuestion.
		dictionary 
			at: sillito shortName 
			ifPresent: [ :aSillito | aSillito addAllQuestions: each generalQuestions ] 
			ifAbsent: [ dictionary 
				at: sillito shortName
				put: (sillito addAllQuestions: each generalQuestions; yourself) ] ].
	^ dictionary values