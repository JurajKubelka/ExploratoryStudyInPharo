utility
allRootNonQuestionActivities: anOrgDocument
	| aCollection |
	aCollection := TRARootActivities new.
	anOrgDocument sessionHeadings do: [ :eachHeading | 
		(eachHeading generalQuestions select: [ :e | e level = 1 ])
			overlappingPairsDo: [ :a :b | 
				(a timespan next asSeconds = b timespan start asSeconds)
					ifFalse: [ 
						| aList aStartIndex anEndIndex | 
						aList := a meaningfulParent meaningfulParent.
						aStartIndex := aList items indexOf: a meaningfulParent.
						anEndIndex := aList items indexOf: b meaningfulParent.
						aStartIndex + 1 to: anEndIndex - 1 do: [ :anIndex |
							aCollection add: (aList items at: anIndex) ] ] ] ].
	^ aCollection.
