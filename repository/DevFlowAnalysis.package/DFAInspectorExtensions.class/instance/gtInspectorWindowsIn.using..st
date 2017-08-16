gt-inspector-extension
gtInspectorWindowsIn: composite using: aCollectionOfWindows
	^ composite table
			title: 'Windows';
			display: [ aCollectionOfWindows value ];
			column: 'Session'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow sessionID ]
				width: 53;
			column: 'Name'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow label ];
			column: 'Type'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow windowType ifNotNil: [ :aType | aType humanReadableString ] ]	
				width: 300
				tags: [ :aDFProfiledWindow |
					{ 	aDFProfiledWindow windowType isDialog ifTrue: [ 'dialog' ].
						aDFProfiledWindow windowType isRealWindow ifTrue: [ 'window' ].
						aDFProfiledWindow windowType isIDE ifTrue: [ 'ide' ].
						aDFProfiledWindow windowType isDynamicIDE ifTrue: [ 'dynamic' ].
						aDFProfiledWindow windowType isStaticIDE ifTrue: [ 'static' ].
						aDFProfiledWindow windowType isExample ifTrue: [ 'example' ].
						aDFProfiledWindow windowType isInspector ifTrue: [ 'inspector' ].
						aDFProfiledWindow windowType isDebugger ifTrue: [ 'debugger' ].
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
			beMultiple;
			withSmalltalkSearch;
			showOnly: 250;
			sendOneOrMultiple;
			installExportToCSV;
			helpMessage: 'it executes: self select: [ :each | INPUT ]'