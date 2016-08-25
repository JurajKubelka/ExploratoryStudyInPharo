general question per level
generalQuestionsPerLevelWithEdges: aNode
	| view edgeBuilder groups |
	groups := OrderedCollection new.
	view := self generalQuestionsPerLevel: aNode groups: groups.

	edgeBuilder := RTEdgeBuilder new
		view: view;
		objects: groups;
		noRepetition.
	edgeBuilder shape line; horizontalAttachPoint; color: (Color black alpha: 0.3).
	edgeBuilder connectFrom: #yourself toAll: [ :eachGroup | | subGroups |
		subGroups := Set new.
		eachGroup do: [ :eachQuestion |
			eachQuestion subGeneralQuestions do: [ :eachSubQuestion |
				groups do: [ :eachGroup2 | 
					(eachGroup2 anySatisfy: [ :aQuestionInGroup | aQuestionInGroup question = eachSubQuestion ])
						ifTrue: [ subGroups add: eachGroup2 ] ] ]
			 ].
		subGroups ]. 
	edgeBuilder build.
	^ edgeBuilder view