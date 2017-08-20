gt-inspector-extension
gtInspectorExtendedWindowsIn: composite using: aCollectionOfWindows
	^ composite table
			title: 'Windows Extra';
			display: [ aCollectionOfWindows value ];
			column: 'Session'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow sessionID ]
				width: 53;
			column: 'Familiar'
				evaluated: [ :aDFProfiledWindow | 
					aDFProfiledWindow session isFamiliar ifTrue: [ 'familiar' ] ifFalse: [ 'unfamiliar' ] ]
				width: 53;
			column: 'Name'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow label ];
			column: 'Type'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow windowType 
					ifNotNil: [ :aType | aType humanReadableString ] ]
				width: 80;
			column: 'Window' evaluated: [ :aDFProfiledWindow | 
					aDFProfiledWindow windowType isDialog 
						ifTrue: [ 'dialog' ]
						ifFalse: [ aDFProfiledWindow windowType isRealWindow 
							ifTrue: [ 'window' ]
							ifFalse: [ 'other' ] ] ]
				width: 60;
			column: 'IDE' evaluated: [ :aDFProfiledWindow |
					aDFProfiledWindow windowType isIDE ifTrue: [ 'ide' ] ifFalse: [ 'other' ] ]
				width: 40;
			column: 'Dynamic' evaluated: [ :aDFProfiledWindow |
					aDFProfiledWindow windowType isDynamicIDE 
						ifTrue: [ 'dynamic' ] 
						ifFalse: [ aDFProfiledWindow windowType isStaticIDE ifTrue: [ 'static' ] ifFalse: [ 'other' ] ] ]
				width: 60;
			column: 'Tool' evaluated: [ :aDFProfiledWindow | aDFProfiledWindow windowType toolGeneralName ]
				width: 80;
			column: 'Debugger' evaluated: [ :aDFProfiledWindow | 
					aDFProfiledWindow windowType isDebugger
						ifTrue: [ aDFProfiledWindow isPreDebugger 
							ifTrue: [ aDFProfiledWindow hasRealDebugger ifTrue: [ 'preDbg+' ] ifFalse: [ 'preDbg-' ] ]
							ifFalse: [ aDFProfiledWindow isRealDebugger 
								ifTrue: [ aDFProfiledWindow hasPreDebugger ifTrue: [ 'realDbg+' ] ifFalse: [ 'realDbg-' ] ]
								ifFalse: [ 'interupt' ] ] ]
						ifFalse: [ 'no' ] ]
				width: 80;
			column: 'Duration'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow duration roundedToSeconds asSeconds asString, 's' ]
				width: 63;
			column: 'Open Time'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow openTime asTime print24 ]
				width: 70
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