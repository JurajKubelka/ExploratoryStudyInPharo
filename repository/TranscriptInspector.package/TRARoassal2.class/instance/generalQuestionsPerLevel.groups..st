general question per level
generalQuestionsPerLevel: aNode groups: groups
	| sillito questions builder |
	sillito := aNode sillitoQuestions.
	questions := sillito questions.

	builder := RTGrapher new.
	questions doWithIndex: [ :eachQuestion :index | | data questionsPerLevels |
			questionsPerLevels := (eachQuestion children groupedBy: #level).
			groups addAll: questionsPerLevels.
			data := RTData new.
			data dotShape 
				size: [ :collection | (collection size / 5) max: 2 ];
				color: (Color black alpha: 0.5).
			data points: questionsPerLevels.
			data x: [ :collection | collection first level ].
			data y: [ :collection | index ].
			builder add: data.
	].
	builder axisY noTick.
	builder build.
	^ builder view.
