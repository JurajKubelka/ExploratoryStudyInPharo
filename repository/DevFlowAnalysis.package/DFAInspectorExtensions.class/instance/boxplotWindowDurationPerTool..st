roassal views
boxplotWindowDurationPerTool: collectionOfWindows
	"Returns RTView with Bowplot:
		x: boxplot per tool type (code browser, debugger, etc.)
		y: window duration (from opening to closing action)"
	| toolNames builder |

	toolNames := (collectionOfWindows collect: [ :e | e windowType toolGeneralName ] as: Set) asOrderedCollection.

	builder := RTGrapher new.
	builder extent: 1200 @ 600.

	toolNames doWithIndex: [ :toolName :index | | data model |
		data := RTBoxPlotDataSet new.
		data showMean: true.
		data meanShape color: (Color blue alpha: 0.4).
		model := (collectionOfWindows select: [ :e | e windowType toolGeneralName = toolName ]).
		data points: model.
		data model: model.
		data y: [ :window | window duration asSeconds ].
		data x: [ :collection | index ].
		builder add: data ].
	builder axisX
			numberOfTicks: toolNames size ;
			labelConversion: [ :v | 
				v isZero ifTrue: [ '' ] ifFalse: [ toolNames at: v ] ];
			labelRotation: -20;
			title: 'Tools'.
	builder axisY
		noDecimal;
		numberOfTicks: 20;
		labelConversion: [ :v | 
			v seconds asDuration. ];
		title: 'Duration'.
	builder build.
	^ builder view.