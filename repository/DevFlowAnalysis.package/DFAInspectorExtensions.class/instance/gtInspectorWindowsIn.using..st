gt-inspector-extension
gtInspectorWindowsIn: composite using: aCollectionOfWindows
	^ composite table
			title: 'Windows' translated;
			display: [ aCollectionOfWindows value ];
			column: 'Session'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow sessionID ]
				width: 53
				tags: {}
				sortedBy: [ :a :b | a sessionOrder < b sessionOrder ];
			column: 'Name'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow label ];
			column: 'Type'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow windowType ifNotNil: [ :aType | aType humanReadableString ] ]	
				width: 450
				tags: [ :aDFProfiledWindow |
					{ 	aDFProfiledWindow windowType isDialog ifTrue: [ 'dialog' ].
						aDFProfiledWindow windowType isRealWindow ifTrue: [ 'window' ].
						aDFProfiledWindow windowType isIDE ifTrue: [ 'ide' ].
						aDFProfiledWindow windowType isDynamicIDE ifTrue: [ 'dynamic' ].
						aDFProfiledWindow windowType isStaticIDE ifTrue: [ 'static' ].
						aDFProfiledWindow windowType isExample ifTrue: [ 'example' ].
						aDFProfiledWindow windowType isInspector ifTrue: [ 'inspector' ].
						aDFProfiledWindow windowType isDebugger ifTrue: [ 'debugger' ].
						aDFProfiledWindow isUserInterrupt ifTrue: [ 'int' ].
						(aDFProfiledWindow label beginsWith: 'Halt') ifTrue: [ 'halt' ].
						(aDFProfiledWindow label beginsWith: 'MessageNotUnderstood') ifTrue: [ 'DNU' ].
						(aDFProfiledWindow label beginsWith: 'TestFailure') ifTrue: [ 'TDD' ].
						aDFProfiledWindow isRealDebugger ifTrue: [ 'realDbg' ].
						aDFProfiledWindow isPreDebugger ifTrue: [ 'preDbg' ].
						aDFProfiledWindow hasPreDebugger ifTrue: [ 'hasPreDbg' ].
						aDFProfiledWindow hasRealDebugger ifTrue: [ 'hasRealDbg' ].
						aDFProfiledWindow windowType isPlayground ifTrue: [ 'playground' ].
						aDFProfiledWindow windowType isOtherIDE ifTrue: [ 'other' ]. } reject: [ :e | e isNil ]
					 ];
			column: 'Duration'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow duration roundedToSeconds ]
				width: 63;
			column: 'Open Time'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow openTime asTime print24 ]
				width: 63
				tags: {}
				sortedBy: [ :a :b | a openTime < b openTime ];
			column: 'Video Time'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow timeFromBeginningOfVideo roundedToSeconds ];
			selectionAct: [ :presentation | presentation selection ifNotNil: #jumpToVideo ] entitled: 'Open in QuickTime Player';
			beMultiple;
			withSmalltalkSearch;
			showOnly: 250;
			sendOneOrMultipleAs: DFAWindows;
			installExportToCSV;
			helpMessage: 'it executes: self select: [ :each | INPUT ]'