categories with one-level sub-categories
questionsWithoutParentsAndChildren: aNode
	"| Category | Questions |"
	| anArrayA anArrayB |
	anArrayA := aNode generalQuestions.
	anArrayB := (TRAInspectorIntegration default questionCategoriesAndLevels: self) 
		flatCollect: [ :e | 
			(e at: 4) flatCollect: [ :e2 | { e2 key. e2 value } ] ] as: IdentitySet.
	^ (anArrayA difference: anArrayB) groupedBy: [ :e | e groupName select: [ :c | c isUppercase ] ].