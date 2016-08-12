visitor
visitSillitoSubgroup: aTRASillitoSubgroup 
	| groups questions |
	groups := aTRASillitoSubgroup questions groupedBy: groupingBlock.
	questions := groups collect: [ :col | 
		col first sillitoQuestion addAllQuestions: col; yourself ] as: OrderedCollection.
	aTRASillitoSubgroup questions: questions.