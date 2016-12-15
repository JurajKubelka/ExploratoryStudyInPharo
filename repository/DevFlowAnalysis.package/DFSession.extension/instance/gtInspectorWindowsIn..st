*DevFlowAnalysis
gtInspectorWindowsIn: composite
	<gtInspectorPresentationOrder: -10>  
	^ composite table
			title: 'Windows';
			display: [ :aDFSession | aDFSession windows ];
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
						aDFProfiledWindow windowType isOtherIDE ifTrue: [ 'other' ]. } reject: [ :e | e isNil ]
					 ];
			column: 'Duration'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow duration roundedToSeconds ]
				width: 63;
			column: 'Video Time'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow timeFromBeginningOfVideo roundedToSeconds ]
				width: 73
				tags: {}
				sortedBy: [ :a :b | a timeFromBeginningOfVideo < b timeFromBeginningOfVideo ];
			column: 'Open Time'
				evaluated: [ :aDFProfiledWindow | aDFProfiledWindow openTime asTime print24 ]
				width: 63
				tags: {}
				sortedBy: [ :a :b | a openTime < b openTime ];
			beMultiple;
			withSmalltalkSearch;
			showOnly: 250;
			sendOneOrMultiple;
			helpMessage: 'it executes: self select: [ :each | INPUT ]'