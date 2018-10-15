categories complexity - parents and children
categoriesComplexity: aNode
	"| Category <Name> | FFP | EFP | US | QGS | 
	 | Direct Parents  |
	 | Direct Children |
	 | All Parents     |
	 | All Children    | "
	
	^ Array streamContents: [ :aTableStream |
		| theGeneralQuestions aSilito |
		aSilito := TRASillito allSillito.
		theGeneralQuestions := aNode generalQuestions.
		aSilito groups do: [ :eachGroup | 
			"Header"
			aTableStream nextPut: (Array streamContents: [ :aTableLineStream |
				aTableLineStream nextPut: 'Category ', eachGroup shortName.
				aSilito groups do: [ :eachColumnGroup | 
					aTableLineStream nextPut: eachColumnGroup shortName ] ]).
			"Direct Parents"
			aTableStream nextPut: (Array streamContents: [ :aTableLineStream |
				aTableLineStream nextPut: 'Direct Parents'.
				aSilito groups do: [ :eachColumnGroup | 
					aTableLineStream nextPut: (theGeneralQuestions select: [ :eachQuestion | 
						eachQuestion mainGroupName = eachGroup shortName and: [ 
							| theParents |
							theParents := eachQuestion parentGeneralQuestions.
							theParents notEmpty and: [ 
								theParents anySatisfy: [ :eachParent | eachParent mainGroupName = eachColumnGroup shortName ] ] ] ]).
				] 
			]).
			"Direct Children"
			aTableStream nextPut: (Array streamContents: [ :aTableLineStream |
				aTableLineStream nextPut: 'Direct Children'.
				aSilito groups do: [ :eachColumnGroup | 
					aTableLineStream nextPut: (theGeneralQuestions select: [ :eachQuestion | 
						eachQuestion mainGroupName = eachGroup shortName and: [ 
							| theChildren |
							theChildren := eachQuestion generalOneLevelSubQuestions.
							theChildren notEmpty and: [ 
								theChildren anySatisfy: [ :eachParent | eachParent mainGroupName = eachColumnGroup shortName ] ] ] ]).
				] 
			]).
			"All Parents"
			aTableStream nextPut: (Array streamContents: [ :aTableLineStream |
				aTableLineStream nextPut: 'All Parents'.
				aSilito groups do: [ :eachColumnGroup | 
					aTableLineStream nextPut: (theGeneralQuestions select: [ :eachQuestion | 
						eachQuestion mainGroupName = eachGroup shortName and: [ 
							| theParents |
							theParents := eachQuestion parentHierarchyGeneralQuestions flattened.
							theParents notEmpty and: [ 
								theParents anySatisfy: [ :eachParent | eachParent mainGroupName = eachColumnGroup shortName ] ] ] ]).
				] 
			]).
			"All Children"
			aTableStream nextPut: (Array streamContents: [ :aTableLineStream |
				aTableLineStream nextPut: 'All Children'.
				aSilito groups do: [ :eachColumnGroup | 
					aTableLineStream nextPut: (theGeneralQuestions select: [ :eachQuestion | 
						eachQuestion mainGroupName = eachGroup shortName and: [ 
							| theChildren |
							theChildren := eachQuestion generalAnyLevelSubQuestions.
							theChildren notEmpty and: [ 
								theChildren anySatisfy: [ :eachParent | eachParent mainGroupName = eachColumnGroup shortName ] ] ] ]).
				] 
			]).
		]
	]