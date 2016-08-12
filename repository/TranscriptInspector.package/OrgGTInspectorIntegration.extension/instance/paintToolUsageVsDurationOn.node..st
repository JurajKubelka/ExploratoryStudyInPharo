*TranscriptInspector-roassal
paintToolUsageVsDurationOn: aView node: aNode
	| menu callback sillito booleanDisplayNumber booleanCompact questions |
	booleanDisplayNumber := true.
	booleanCompact := true.
	sillito := aNode codeType sillito: aNode fullyDefinedQeneralQuestions.
	questions := sillito questions.
	callback := [
		aView removeAllEdges; removeAllElements.
		self 
			paintToolUsageVsDurationOn: aView node: aNode questions: questions 
			numbers: booleanDisplayNumber compactPerQuestion: booleanCompact.
		(aView attributeAt: #GlamourContext ifAbsent: nil) ifNotNil: [ :aContext |
			aContext view ifNotNil: [ aContext registerCallbacks ] ].
		aView signalUpdate ].
	menu := RTMenuBuilder new.
	menu view: aView.
	menu
		menu: 'Category' submenu: 'All Categories' 
			callback: [ questions := sillito questions. callback value ];
		menu: 'Category' submenu: sillito groups first longName 
			callback: [ questions := sillito groups first questions. callback value ];
		menu: 'Category' submenu: sillito groups second longName 
			callback: [ questions := sillito groups second questions. callback value ];
		menu: 'Category' submenu: sillito groups third longName
			callback: [ questions := sillito groups third questions. callback value ];
		menu: 'Category' submenu: sillito groups fourth longName
			callback: [ questions := sillito groups fourth questions. callback value ].
	menu
		menu: 'Question Numbers' submenu: 'Show Question Numbers' 
			callback: [ booleanDisplayNumber := true. callback value ];
		menu: 'Question Numbers' submenu: 'Hide Question Numbers' 
			callback: [ booleanDisplayNumber := false. callback value ].
	menu
		menu: 'Compact' submenu: 'Compact Per Category' 
			callback: [ booleanCompact := false. callback value ];
		menu: 'Compact' submenu: 'Compact Per Question' 
			callback: [ booleanCompact := true. callback value ].

	menu build.
	^ self paintToolUsageVsDurationOn: aView node: aNode questions: questions numbers: false compactPerQuestion: false.