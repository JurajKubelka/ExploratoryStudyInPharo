private
abridgeQuestions
	| dictionary |
	dictionary := Dictionary new.
	self questions do: [ :each | | sillito |
		sillito := each sillitoQuestion.
		dictionary 
			 at: sillito shortName 
			ifPresent: [ :aSillito | aSillito addQuestion: each ] 
			ifAbsentPut: [ sillito addQuestion: each; yourself ] ].
	^ dictionary values