roassal views
scatterplotWindowDurationPerTool: collectionOfWindows
	"Returns RTView with Scatterplot:
		x: window duration (from opening to closing action)
		y: tool type (code browser, debugger, etc.)"
	| toolNames builder data |

	toolNames := (collectionOfWindows collect: [ :e | e windowType toolGeneralName ] as: Set) 		asOrderedCollection.
	builder := RTGrapher new.
	builder extent: 1200 @ 600. 
	data := RTData new.
	data dotShape circle
		color: (Color blue alpha: 0.3);
		size: 5.
	data
		points: collectionOfWindows;
		x: [ :m | m duration asSeconds ];
		y: [ :m | toolNames indexOf: m windowType toolGeneralName ].
	builder add: data.
	builder axisX
		noDecimal;
		numberOfTicks: 20;
		labelConversion: [ :v | 
			v seconds asDuration. ];
		title: 'Duration'.
	builder axisY
		numberOfTicks: toolNames size ;
		labelConversion: [ :v | 
			v isZero ifTrue: [ '' ] ifFalse: [ toolNames at: v ] ];
		title: 'Tools'.
	builder build.
	^ builder view