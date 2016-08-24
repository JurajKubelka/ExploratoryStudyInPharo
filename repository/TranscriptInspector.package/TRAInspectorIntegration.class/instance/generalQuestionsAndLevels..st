questions - levels
generalQuestionsAndLevels: aNode
	"| Level 1 | Level 2 | ... | Level N | Sillito question |"
	| questions maxLevel table |
	questions := aNode generalQuestions.
	maxLevel := questions max: #level.
	table := Dictionary new.
	questions do: [ :eachQuestion | | levels |
		levels := table 
			at: eachQuestion questionId
			ifAbsentPut: [ (Array new: maxLevel + 1) replace: [ :e | OrderedCollection new ] ].
		(levels at: eachQuestion level) add: eachQuestion.
		levels at: maxLevel + 1 put: eachQuestion sillitoQuestion ].
	^ table values.